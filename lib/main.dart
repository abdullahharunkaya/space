import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:space/modules/home/bloc/home_cubit.dart';
import 'package:space/modules/main/bloc/main_cubit.dart';
import 'package:space/modules/splash/bloc/splash_cubit.dart';
import 'package:space/utils/get-it.dart';
import 'package:space/utils/http-override.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'modules/main/view/main-view.dart';

void main() {
  /// Timeago localization for Turkish
  timeago.setLocaleMessages('tr', timeago.TrMessages());
  timeago.setLocaleMessages('tr', timeago.TrShortMessages());

  /// Define connectivity for internet connection
  final Connectivity connectivity = Connectivity();

  /// Https override
  HttpOverrides.global = MyHttpOverrides();

  /// Only portrait orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// Run app have responsive sizer
  runApp(ResponsiveSizer(
    builder: (context, orientation, screenType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<MainCubit>(
            create: (context) => MainCubit(),
          ),
          BlocProvider<SplashCubit>(
            create: (context) => SplashCubit(),
          ),
          BlocProvider<HomeCubit>(
            create: (context) => HomeCubit(),
          ),
        ],
        child: const SpaceX(),
      );
    },
  ));

  /// GetIt setup for dependency injection
  setupGetIt();
}

/// Initial class for app
class SpaceX extends StatelessWidget {
  const SpaceX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SpaceX',
        theme: ThemeData(
          /// Primary color is red for SpaceX theme
          primarySwatch: Colors.red,
        ),
        home: const MainView());
  }
}
