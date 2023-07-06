import 'package:dio/dio.dart';
import 'package:weather_besenior/core/data_state.dart';
import 'package:weather_besenior/features/feature_weather/data/data_source/api_provider.dart';
import 'package:weather_besenior/features/feature_weather/data/models/currentCityModel.dart';
import 'package:weather_besenior/features/feature_weather/domain/entities/currentCityEntity.dart';
import 'package:weather_besenior/features/feature_weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  late ApiProvider apiProvider;
  WeatherRepositoryImpl(this.apiProvider);
  @override
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(
      String cityName) async {
    try {
      Response response = await apiProvider.callCurrentWeather(cityName);
      if (response.statusCode == 200) {
        CurrentCityEntity currentCityEntity =
            CurrentCityModel.fromJson(response.data);
        return DataSuccess(currentCityEntity);
      } else {
        return DataFailed('error');
      }
    } catch (e) {
      return DataFailed('some error');
    }
  }
}
