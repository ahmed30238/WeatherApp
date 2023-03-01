import 'package:weather_app/weather/domain/entity/weather.dart';

abstract class BaseWeatherRepository {
 Future<Weather> getWeatherWithCountryName(String countryName);
}