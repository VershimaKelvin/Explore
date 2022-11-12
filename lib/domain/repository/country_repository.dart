import 'package:dartz/dartz.dart';
import 'package:untitled4/domain/entity.dart';

import '../../core/errors/failure.dart';

abstract class CountryRepository {
  Future<Either<Failure, List<CountryEntity>>> fetchCountries();
}
