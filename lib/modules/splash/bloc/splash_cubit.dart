import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:space/modules/main/bloc/main_cubit.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  ///We call finishSplash method from SplashCubit, Normally we should user or app data from api or local storage
  void finishSplash(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      ///We call showHome method from MainCubit to show HomeView
      context.read<MainCubit>().showHome();
    });
  }
}
