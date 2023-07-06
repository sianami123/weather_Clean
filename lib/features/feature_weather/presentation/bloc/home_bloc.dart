import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_besenior/core/data_state.dart';
import 'package:weather_besenior/features/feature_weather/presentation/bloc/cw_status.dart';

import '../../domain/use_cases/get_current_weather_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCurrentWeatherUseCase getCurrentWeatherUseCase;
  HomeBloc(this.getCurrentWeatherUseCase)
      : super(HomeState(cwStatus: CwLoading())) {
    on<LoadCwEvent>((event, emit) async {
      emit(state.copyWith(CwLoading()));
      DataState dataState = await getCurrentWeatherUseCase(event.cityName);
      if (dataState is DataSuccess) {
        emit(state.copyWith(CwCompleted(dataState.data)));
      } else if (dataState is DataFailed) {
        emit(state.copyWith(CwError(dataState.error!)));
      }
    });
  }
}
