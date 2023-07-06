import 'package:weather_besenior/core/data_state.dart';
import 'package:weather_besenior/features/feature_weather/domain/entities/currentCityEntity.dart';

abstract class WeatherRepository {
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String cityName);
}
