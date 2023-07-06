part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {}

class LoadCwEvent extends HomeEvent {
  late final String cityName;
  LoadCwEvent(this.cityName);
  @override
  List<Object?> get props => [];
}
