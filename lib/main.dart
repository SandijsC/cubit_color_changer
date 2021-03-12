import 'package:flutter/material.dart';
import 'package:cubit_color_changer/bloc/cubit/color_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(home: ColorChanger()));
}

/// App for changing the background color using cubit
class ColorChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorCubit(),
      child: const Scaffold(),
    );
  }
}
