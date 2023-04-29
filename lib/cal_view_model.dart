import 'package:mobx/mobx.dart';

part 'cal_view_model.g.dart';
// flutter pub run build_runner build
class Calculator = CalculatorBase with _$Calculator;

abstract class CalculatorBase with Store {
  @observable
  int result = 0;

  @action
  void plus(int first, int second) {
    result = first + second;
  }
  @action
  void minus(int first, int second) {
    result = first - second;
  }

}