import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled4/core/errors/error.dart';
import 'package:untitled4/core/errors/failure.dart';
import 'package:untitled4/domain/entity.dart';
import 'package:untitled4/domain/repository/country_repository.dart';
import 'package:untitled4/services/data_source.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: CountryRepository)
class CountryRepositoryImpl implements CountryRepository {
  CountryRepositoryImpl({
    required this.countriesRemoteDatasource,
  });
  final CountriesRemoteDatasource countriesRemoteDatasource;


  @override
  Future<Either<Failure, List<CountryEntity>>> fetchCountries()async {
    try {
      final response = await countriesRemoteDatasource.fetchCountries();
      print('CountryRepositoryImpl');
      return Right(response);
    } catch (e) {
      print('This is the error $e');
      if (e is NoInternetException) {
        return Left(NoInternetFailure());
      }
      if (e is DioError) {
        if (e.type == DioErrorType.connectTimeout ||
            e.type == DioErrorType.receiveTimeout) {
          return Left(
            TimoutFailure(),
          );
        }
        if (e.response?.data != null && e.response?.data != '') {
          return Left(

            ServerFailure(
              message: (e.response!.data as Map<String, dynamic>)['error'] ??
                  (e.response!.data as Map<String, dynamic>)['message'] ??
                  'Service unavailable, please try again!',
            ),
          );
        } else {
          return const Left(
            ServerFailure(
              message: 'Server error, please try again',
            ),
          );
        }
      }
      return Left(UnknownFailure());
    }
  }
}
