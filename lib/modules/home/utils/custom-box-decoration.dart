import 'package:flutter/material.dart';

class CustomBoxDecoration {
  static Decoration homeBackgroundDecoration(String url, bool success) {
    return BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(url),
        fit: BoxFit.contain,
        opacity: 0.1,
      ),
      color: success ?Colors.green.withOpacity(0.2)
          : Colors.red.withOpacity(0.1),
    );
  }
}
