import 'package:bloc/bloc.dart';

/// Cubit for color state
class ColorCubit extends Cubit<int> {
  /// Set initial color state
  ColorCubit() : super(0xFF323232);

  /// Changing the color
  void setColor(color) => emit(color);
}
