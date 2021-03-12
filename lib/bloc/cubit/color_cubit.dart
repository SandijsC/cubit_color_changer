import 'package:bloc/bloc.dart';

class ColorCubit extends Cubit<int> {
  ColorCubit() : super(0xFF216600);

  setColor(color) => emit(color);
}
