import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_besenior/features/feature_weather/presentation/bloc/home_bloc.dart';

import 'core/widgets/main_wrapper.dart';
import 'locator.dart';

Future<void> main() async {
  ///init locator
  await setup();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<HomeBloc>()),
      ],
      child: MainWrapper(),
    ),
  ));
}
