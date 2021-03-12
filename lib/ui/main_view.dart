import 'package:cubit_color_changer/bloc/cubit/color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './color_changer_buttons.dart';

/// Widget with buttons that change the background color
class MainView extends StatelessWidget {
  /// Set widget key
  const MainView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ColorCubit, int>(builder: (context, backGroundColor) {
        void changeColor(int color) =>
            context.read<ColorCubit>().setColor(color);
        return Container(
          child: Column(
            children: [
              const Text(
                'Change background color to:',
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
              ColorChangerButtons(changeColor: changeColor),
              OutlinedButton(
                onPressed: () => changeColor(0xFF323232),
                child: const Text(
                  'RESET',
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          color: Color(backGroundColor),
          constraints: const BoxConstraints.expand(),
        );
      }),
    );
  }
}
