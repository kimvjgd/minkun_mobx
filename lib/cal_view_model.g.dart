// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cal_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Calculator on CalculatorBase, Store {
  late final _$resultAtom =
      Atom(name: 'CalculatorBase.result', context: context);

  @override
  int get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(int value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$CalculatorBaseActionController =
      ActionController(name: 'CalculatorBase', context: context);

  @override
  void plus(int first, int second) {
    final _$actionInfo = _$CalculatorBaseActionController.startAction(
        name: 'CalculatorBase.increment');
    try {
      return super.plus(first, second);
    } finally {
      _$CalculatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result}
    ''';
  }
}
