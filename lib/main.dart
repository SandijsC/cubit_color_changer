import 'package:flutter/material.dart';
import 'package:cubit_color_changer/bloc/cubit/color_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './ui/main_view.dart';

void main() {
  runApp(MaterialApp(
    home: ColorChanger(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.grey[800],
      accentColor: Colors.cyan[600],
      fontFamily: 'Arimo',
    ),
  ));
}

/// App for changing the background color using cubit
class ColorChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorCubit(),
      child: const MainView(),
    );
  }
}
