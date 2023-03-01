import 'package:weather_app/weather/data/data_source/remote_data_source.dart';
import 'package:weather_app/weather/domain/entity/weather.dart';
import 'package:weather_app/weather/domain/repo/weather_repo.dart';

class WeatherRepository implements BaseWeatherRepository {
  // BaseWeatherRepository baseWeatherRepository;
  BaseRemoteDataSource baseRemoteDataSource;
  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherWithCountryName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherWithCountryName(countryName))!;
  }
}
