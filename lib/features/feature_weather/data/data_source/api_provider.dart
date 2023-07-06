import 'package:dio/dio.dart';
import 'package:weather_besenior/core/constants.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<dynamic> callCurrentWeather(cityName) async {
    var response = await _dio.get(
      '${Constants.MyBaseUrl}',
      queryParameters: {
        'q': cityName,
        'appid': Constants.MyApiKey,
        'units': 'metric'
      },
    );
    return response;
  }
}
