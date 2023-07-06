import 'package:flutter/material.dart';
import 'package:weather_besenior/features/feature_weather/domain/entities/currentCityEntity.dart';

@immutable
abstract class CwStatus {}

class CwLoading extends CwStatus {}

class CwCompleted extends CwStatus {
  final CurrentCityEntity currentCityEntity;
  CwCompleted(this.currentCityEntity);
}

class CwError extends CwStatus {
  final String message;
  CwError(this.message);
}
