// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:package_info_plus/package_info_plus.dart' as _i8;

import '../../domain/repository/country_repository.dart' as _i11;
import '../../domain/repository/country_repository_impl.dart' as _i12;
import '../../domain/usecase.dart' as _i13;
import '../../domain/usecase/fetch_countries_usecase.dart' as _i14;
import '../../provider/country_notifier.dart' as _i15;
import '../../screens/widgets/app_loading_pop_up.dart' as _i3;
import '../../services/data_source.dart' as _i10;
import '../network/api_requester.dart' as _i9;
import '../network/network_info.dart' as _i7;
import '../Theme/myTheme.dart' as _i6;
import 'register_module.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppLoadingPopup>(() => _i3.AppLoadingPopup());
  gh.factory<_i4.Dio>(() => registerModule.dio);
  gh.factory<_i5.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i6.MyTheme>(() => _i6.MyTheme());
  gh.lazySingleton<_i7.NetworkInfo>(
      () => _i7.NetworkInfoImpl(get<_i5.InternetConnectionChecker>()));
  await gh.factoryAsync<_i8.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  gh.lazySingleton<_i9.ApiRequester>(
      () => _i9.ApiRequester(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i10.CountriesRemoteDatasource>(
      () => _i10.CountriesRemoteDatasourceImpl(
            apiRequester: get<_i9.ApiRequester>(),
            networkInfo: get<_i7.NetworkInfo>(),
          ));
  gh.lazySingleton<_i11.CountryRepository>(() => _i12.CountryRepositoryImpl(
      countriesRemoteDatasource: get<_i10.CountriesRemoteDatasource>()));
  gh.lazySingleton<_i13.FetchCountriesUseCase>(() => _i13.FetchCountriesUseCase(
      countryRepository: get<_i11.CountryRepository>()));
  gh.lazySingleton<_i14.FetchCountriesUsecase>(() => _i14.FetchCountriesUsecase(
      countryRepository: get<_i11.CountryRepository>()));
  gh.lazySingleton<_i15.CountryNotifier>(() => _i15.CountryNotifier(
      fetchCountriesUsecase: get<_i13.FetchCountriesUseCase>()));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
