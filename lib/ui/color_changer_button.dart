import 'package:flutter/material.dart';

/// Circle shaped button
class ColorChangerButton extends StatelessWidget {
  /// Set widget key, button onPressed function and label
  const ColorChangerButton({
    Key key,
    @required this.onPressed,
    this.label,
  }) : super(key: key);

  /// Label inside button
  final String label;

  /// onPressed function
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 80, height: 80),
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(label),
          style: ElevatedButton.styleFrom(
              primary: Colors.grey[900], shape: const CircleBorder())),
    );
  }
}
