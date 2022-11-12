// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

import '../../domain/repository/country_repository.dart' as _i6;
import '../../domain/usecase.dart' as _i5;
import '../../provider/country_notifier.dart' as _i10;
import '../../services/data_source.dart' as _i9;
import '../network/api_requester.dart' as _i3;
import '../network/network_info.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ApiRequester>(
      () => _i3.ApiRequester(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i5.FetchCountriesUseCase>(() => _i5.FetchCountriesUseCase(
      countryRepository: get<_i6.CountryRepository>()));
  gh.lazySingleton<_i7.NetworkInfo>(
      () => _i7.NetworkInfoImpl(get<_i8.InternetConnectionChecker>()));
  gh.lazySingleton<_i9.CountriesRemoteDatasource>(
      () => _i9.CountriesRemoteDatasourceImpl(
            apiRequester: get<_i3.ApiRequester>(),
            networkInfo: get<_i7.NetworkInfo>(),
          ));
  gh.lazySingleton<_i10.CountryNotifier>(() => _i10.CountryNotifier(
      fetchCountriesUsecase: get<_i5.FetchCountriesUseCase>()));
  return get;
}
