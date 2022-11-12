import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled4/core/di/di_container.config.dart';

GetIt di = GetIt.instance;
@injectableInit
GetIt configureDependencies() => $initGetIt(di);
