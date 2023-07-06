import 'package:get_it/get_it.dart';
import 'package:weather_besenior/features/feature_weather/data/data_source/api_provider.dart';
import 'package:weather_besenior/features/feature_weather/data/repositoryimpl/weather_repositoryimpl.dart';
import 'package:weather_besenior/features/feature_weather/domain/use_cases/get_current_weather_usecase.dart';
import 'package:weather_besenior/features/feature_weather/presentation/bloc/home_bloc.dart';

GetIt locator = GetIt.instance;
setup() {
  locator.registerSingleton<ApiProvider>(ApiProvider());

  ///repositories from API
  locator.registerSingleton<WeatherRepositoryImpl>(
      WeatherRepositoryImpl(locator()));

  ///usecases from repos
  locator.registerSingleton<GetCurrentWeatherUseCase>(
      GetCurrentWeatherUseCase(locator()));

  ///bloc from usecase
  locator.registerSingleton<HomeBloc>(HomeBloc(locator()));
}
