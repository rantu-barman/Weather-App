import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/dependencyinjection.dart';
import '../../models/weather_model.dart';
import '../services/weather_service.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  final WeatherApiService _weatherApiService  = AppDependencyInjector.getIt.get();

  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>(_onFetchWeather);
  }

  FutureOr<void> _onFetchWeather(
    FetchWeather event,
    Emitter<WeatherBlocState> emit,
  ) async {
    emit(WeatherBlocLoading());
    try {
      final coordinates = event.position;
      final weather = await _weatherApiService.fetchWeather(coordinates.latitude, coordinates.longitude);
      if (weather != null) {
        final location = await _getAddress(coordinates.latitude, coordinates.longitude);
        emit(WeatherBlocSuccess(weather, location ?? ""));
      } else {
        emit(WeatherBlocFailure());
      }
    } catch (_) {
      emit(WeatherBlocFailure());
    }
  }

  Future<String?> _getAddress(double latitude, double longitude) async {
    try {
      final placemarks = await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        return '${placemark.subLocality}, ${placemark.locality}';
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error getting address: $e');
      }
    }
    return null;
  }
}
