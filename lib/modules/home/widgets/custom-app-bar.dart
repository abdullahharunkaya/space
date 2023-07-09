import 'package:flutter/material.dart';

class CustomAppBarWidget extends AppBar {
  CustomAppBarWidget({
    Key? key,
    required String title,
    required BuildContext context,
  }) : super(
          key: key,
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          elevation: 0,
        );
}
