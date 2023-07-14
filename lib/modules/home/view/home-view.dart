import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space/modules/home/bloc/home_cubit.dart';
import 'package:space/modules/home/widgets/error-widget.dart';
import 'package:space/modules/home/widgets/loaded-widget.dart';
import 'package:space/modules/home/widgets/loading-widget.dart';

import '../widgets/refresh-indicator-widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        /// BlocBuilder will listen to changes in the state and
        /// rebuild the UI with the new data.
        builder: (context, state) {
          ///RefreshIndicatorWidget is a custom widget that will show a refresh indicator when the user pulls down the screen.
          ///It will also call the refresh method when the user pulls down the screen.
          ///The refresh method will call the HomeCubit to fetch the data again.
          ///The HomeCubit will emit a new state with the new data.
          ///The BlocBuilder will listen to the new state and rebuild the UI with the new data.
          return RefreshIndicatorWidget(
            child: _buildPage(context, state),
          );
        },
        bloc: context.read<HomeCubit>(),
      ),
    );
  }

  Widget _buildPage(BuildContext context, HomeState state) {
    ///The state is an instance of the HomeState class.
    ///The state can be one of the following:
    ///HomeInitial, HomeLoading, HomeLoaded, HomeError.
    ///We will show a different widget depending on the state.
    ///The widget will be:
    ///LoadingWidget, LoadedWidget, ErrorsWidget.
    ///The LoadingWidget will show a loading indicator.
    ///The LoadedWidget will show the data.
    ///The ErrorsWidget will show an error message.
    if (state is HomeLoading) return const LoadingWidget();
    if (state is HomeLoaded) return const LoadedWidget();
    if (state is HomeError) return const ErrorsWidget();
    return const ErrorsWidget();
  }
}
