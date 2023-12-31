import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../bloc/home_cubit.dart';
import '../utils/time-converter.dart';
import 'custom-app-bar.dart';
import 'item-widget.dart';

class LoadedWidget extends StatefulWidget {
  const LoadedWidget({Key? key}) : super(key: key);

  @override
  State<LoadedWidget> createState() => _LoadedWidgetState();
}

class _LoadedWidgetState extends State<LoadedWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints.expand(), child: _buildPage(context));
  }

  Widget _buildPage(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomAppBarWidget(
          imageUrl: context.watch<HomeCubit>().lastDuty!.links!.patch!.large!,
          title: context.watch<HomeCubit>().lastDuty!.name ?? 'No Name',
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            ItemWidget(
              title: "Mission Name",
              subtitle: context.watch<HomeCubit>().lastDuty!.name ?? 'No Name',
            ),
            ItemWidget(
              title: "Launch Date",
              subtitle: TimeConverter.timeUntil(
                  context.watch<HomeCubit>().lastDuty!.dateLocal!),
            ),
            ItemWidget(
              title: 'Flight Number',
              subtitle:
                  context.watch<HomeCubit>().lastDuty!.flightNumber.toString(),
            ),
            ItemWidget(
              title: 'Details',
              subtitle:
                  context.watch<HomeCubit>().lastDuty!.details ?? 'No Details',
            ),
            ItemWidget(
              title: 'Success',
              subtitle: context.watch<HomeCubit>().lastDuty!.success ?? false
                  ? 'Success'
                  : 'Failed',
            ),


            SizedBox(height: Adaptive.h(100)),


          ]),
        ),
      ],
    );
  }
}
