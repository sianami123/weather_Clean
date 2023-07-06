import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_besenior/features/feature_weather/domain/entities/currentCityEntity.dart';
import 'package:weather_besenior/features/feature_weather/presentation/bloc/cw_status.dart';
import 'package:weather_besenior/features/feature_weather/presentation/screens/home_screen.dart';

import '../../features/feature_weather/presentation/bloc/home_bloc.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> pageViewwidget = [
      HomeScreen(),
    ];
    return Placeholder();
  }
}

// class MainWrapper extends StatefulWidget {
//   const MainWrapper({super.key});
//
//   @override
//   State<MainWrapper> createState() => _MainWrapperState();
// }
//
// class _MainWrapperState extends State<MainWrapper> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     BlocProvider.of<HomeBloc>(context).add(LoadCwEvent("tehran"));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: BlocBuilder<HomeBloc, HomeState>(
//         builder: (context, state) {
//           ///loading
//           if (state.cwStatus is CwLoading) {
//             return const Center(
//               child: Text('loading...'),
//             );
//           }
//
//           ///compeleted
//           if (state.cwStatus is CwCompleted) {
//             final CwCompleted cwCompleted = state.cwStatus as CwCompleted;
//             final CurrentCityEntity currentCityEntity = cwCompleted.currentCityEntity;
//             return Center(
//               child: Text(currentCityEntity.name.toString()),
//             );
//           }
//
//           ///error
//           if (state.cwStatus is CwError) {
//             return const Center(
//               child: Text('error'),
//             );
//           }
//
//           return Container();
//         },
//       ),
//     );
//   }
// }
