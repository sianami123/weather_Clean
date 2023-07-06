import 'package:weather_besenior/core/data_state.dart';
import 'package:weather_besenior/core/use_case.dart';
import 'package:weather_besenior/features/feature_weather/domain/entities/currentCityEntity.dart';
import 'package:weather_besenior/features/feature_weather/domain/repository/weather_repository.dart';

class GetCurrentWeatherUseCase
    extends UseCase<DataState<CurrentCityEntity>, String> {
  late final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository);

  @override
  Future<DataState<CurrentCityEntity>> call(String cityName) {
    return weatherRepository.fetchCurrentWeatherData(cityName);
  }
}
