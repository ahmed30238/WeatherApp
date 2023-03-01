import 'package:weather_app/weather/domain/entity/weather.dart';
import 'package:weather_app/weather/domain/repo/weather_repo.dart';

class GetWeatherWithCountryName {
  BaseWeatherRepository baseWeatherRepository;
  GetWeatherWithCountryName(
    this.baseWeatherRepository,
  );
  Future<Weather> execute(String countryName) async {
    return await baseWeatherRepository.getWeatherWithCountryName(countryName);
  }
}
