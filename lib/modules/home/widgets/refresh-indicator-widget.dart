import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space/utils/paths.dart';

import '../bloc/home_cubit.dart';

class RefreshIndicatorWidget extends StatelessWidget {
  const RefreshIndicatorWidget({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: () async {
        context.read<HomeCubit>().refresh();
      },
      builder:
          (BuildContext context, Widget child, IndicatorController controller) {
        return AnimatedBuilder(
            builder: (BuildContext context, _) {
              return Stack(
                children: [
                  if (!controller.isIdle)
                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 0.0,
                      bottom: 0.0,
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: controller.value * 100,
                          width: 100,
                          child: Image.asset(
                            rocketIcon,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  Transform.translate(
                    offset: Offset(0.0, controller.value * 100),
                    child: child,
                  ),
                ],
              );
            },
            animation: controller,
            child: child);
      },
      triggerMode: IndicatorTriggerMode.onEdge,
      child: child,
    );
  }
}
