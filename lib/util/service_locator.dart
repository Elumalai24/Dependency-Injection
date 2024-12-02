
import 'package:bloc_with_di/util/service_locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;
@InjectableInit()
void configureDependencies() => getIt.init();




































//
// import 'package:bloc_with_di/util/service_locator.config.dart';
// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
//
// final GetIt getIt = GetIt.instance;
//
// @InjectableInit()
// void configureDependencies() => getIt.init();