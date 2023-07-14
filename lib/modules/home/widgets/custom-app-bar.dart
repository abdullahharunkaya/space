import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBarWidget extends SliverAppBar {
  CustomAppBarWidget({
    Key? key,
    required String title,
    required String imageUrl,
  }) : super(
          key: key,
          expandedHeight: Adaptive.h(30.0),
          floating: false,
          pinned: true,
          //snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            centerTitle: true,
            background: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        );
}
