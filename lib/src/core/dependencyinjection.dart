import 'package:get_it/get_it.dart';

import '../features/temperature/core/services/weather_service.dart';


abstract class AppDependencyInjector {
  static final getIt = GetIt.instance;

  static void setupAppDependencies() {
    _getWeatherApiService();
  }



  static void _getWeatherApiService() {
    getIt.registerLazySingleton<WeatherApiService>(() => WeatherApiService());
  }
}
