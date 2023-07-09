import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/paths.dart';

class AppIconWidget extends StatelessWidget {
  const AppIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      splashIcon,
      width: Adaptive.w(100),
      height: Adaptive.h(100),
    );
  }
}
