import 'package:dartz/dartz.dart';
import 'package:untitled4/core/errors/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled4/core/usecase/usecase.dart';
import 'package:untitled4/domain/entity.dart';

import 'repository/country_repository.dart';

@lazySingleton
class FetchCountriesUseCase extends UseCase<List<CountryEntity>, NoParams> {
  FetchCountriesUseCase({
    required this.countryRepository,
  });

  final CountryRepository countryRepository;

  @override
  Future<Either<Failure, List<CountryEntity>>> call(NoParams params) async {
    return countryRepository.fetchCountries();
  }
}
