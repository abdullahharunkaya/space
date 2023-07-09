import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_cubit.dart';

class ErrorsWidget extends StatelessWidget {
  const ErrorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(context.watch<HomeCubit>().errorMessage),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<HomeCubit>().refresh();
          },
          child: const Text('Try Again'),
        ),
      ],
    );
  }
}
