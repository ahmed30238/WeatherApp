import 'package:weather_app/weather/domain/entity/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.description,
    super.main,
    super.pressure,
    super.name,
    super.id,
  );

  factory WeatherModel.fromjson(Map<String, dynamic> json) => WeatherModel(
        json['weather'][0]['description'],
        json['weather'][0]['main'],
        json['main']['pressure'],
        json['name'],
        json['id'],
      );
}
