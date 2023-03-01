import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/weather/core/constants/utils.dart';
import 'package:weather_app/weather/data/model/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherWithCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherWithCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstants.baserUrl}/weather?q=$countryName&appid=${AppConstants.apiKey}');
      return WeatherModel.fromjson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(
        e.toString(),
      );
      }
    }
    return null;
  }
}
