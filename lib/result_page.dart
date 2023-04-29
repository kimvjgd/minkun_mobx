import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_tutorial/cal_view_model.dart';

class ResultPage extends StatelessWidget {
  Calculator cal;
  ResultPage({Key? key, required this.cal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_)=>Center(child: Text('${cal.result}')))
    );
  }
}
