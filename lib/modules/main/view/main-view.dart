import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space/modules/home/view/home-view.dart';
import 'package:space/modules/main/bloc/main_cubit.dart';

import '../../splash/view/splash-view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Main View for Splash and Home View
    ///We use BlocBuilder for listening MainCubit state
    ///if state is SplashState we show SplashView
    ///if state is HomeState we show HomeView
    return Scaffold(
      body: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return _buildPage(context, state);
        },
        bloc: context.read<MainCubit>(),
      ),
    );
  }

  Widget _buildPage(BuildContext context, MainState state) {
    ///We use const for performance and we don't need to rebuild this widgets
    ///We use if else for checking state
    ///if state is SplashState we show SplashView
    ///if state is HomeState we show HomeView
    ///We have two state for MainCubit
    ///SplashState and HomeState
    if (state is SplashState) return const SplashView();
    if (state is HomeState) return const HomeView();
    return const Center(
      child: Text('Error'),
    );
  }
}
