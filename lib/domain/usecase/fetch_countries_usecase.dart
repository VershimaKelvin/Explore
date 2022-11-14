import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled4/core/errors/failure.dart';
import 'package:untitled4/core/usecase/usecase.dart';
import 'package:untitled4/domain/entity.dart';
import 'package:untitled4/domain/repository/country_repository.dart';

@lazySingleton
class FetchCountriesUsecase extends UseCase<List<CountryEntity>, NoParams> {
  FetchCountriesUsecase({
    required this.countryRepository,
  });

  final CountryRepository countryRepository;

  @override
  Future<Either<Failure, List<CountryEntity>>> call(NoParams params) async {
    print('reached countryRepository.fetchCountries');
    return countryRepository.fetchCountries();
  }
}
