import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import '../../models/weather_model.dart';
import '../../../../core/api_keys.dart';

class WeatherApiService {
    String apiKey = API_KEY;

  Future<WeatherModel?> fetchWeather(double latitude, double longitude) async {
    try {
      final response = await http.get(
        Uri.parse('https://api.tomorrow.io/v4/weather/realtime?location=$latitude,$longitude&apikey=$apiKey'),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final Map<String, dynamic> valuesMap = data['data']['values'];
        return WeatherModel.fromJson(valuesMap);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
