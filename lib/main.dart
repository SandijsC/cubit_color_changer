import 'package:flutter/material.dart';
import 'package:cubit_color_changer/bloc/cubit/color_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(new MaterialApp(home: ColorChanger()));
}

class ColorChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorCubit(),
      child: Scaffold(),
    );
  }
}
