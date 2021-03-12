import 'package:flutter/material.dart';
import './color_changer_button.dart';

/// Buttons for changing the background color
class ColorChangerButtons extends StatelessWidget {
  /// Set widget key and color changing method
  const ColorChangerButtons({
    Key key,
    this.changeColor,
  }) : super(key: key);

  /// Method for changing the background color
  final void Function(int) changeColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ButtonBar(
        children: [
          ColorChangerButton(
              onPressed: () => changeColor(0xff490700), label: 'RED'),
          ColorChangerButton(
              onPressed: () => changeColor(0xff223D00), label: 'GREEN'),
          ColorChangerButton(
              onPressed: () => changeColor(0xff00173D), label: 'BLUE'),
        ],
        alignment: MainAxisAlignment.center,
      ),
    );
  }
}
