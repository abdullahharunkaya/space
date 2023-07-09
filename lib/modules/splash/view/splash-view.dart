import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space/modules/splash/bloc/splash_cubit.dart';

import '../../../global/app-icon-widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    ///We call finishSplash method from SplashCubit, Normally we should user or app data from api or local storage
    context.read<SplashCubit>().finishSplash(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          return _buildPage(context, state);
        },
        bloc: context.read<SplashCubit>(),
      ),
    );
  }

  Widget _buildPage(BuildContext context, SplashState state) {
    ///We show AppIconWidget while we are waiting for SplashState
    return const Center(child: AppIconWidget());
  }
}
