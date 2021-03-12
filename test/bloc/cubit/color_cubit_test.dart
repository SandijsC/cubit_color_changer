import 'package:cubit_color_changer/bloc/cubit/color_cubit.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  //Arange
  var firstColor = 0xff223D00;
  var secondColor = 0xff00173D;
  var thirdColor = 0xffA58700;
  blocTest(
    'Color state should change to the color passed into setColor method',
    //Act
    build: () => ColorCubit(),
    act: (bloc) =>
        bloc..setColor(firstColor)..setColor(secondColor)..setColor(thirdColor),
    //Assert
    expect: [firstColor, secondColor, thirdColor],
  );
}
