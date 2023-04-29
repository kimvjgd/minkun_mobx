import 'package:flutter/material.dart';
import 'package:mobx_tutorial/cal_view_model.dart';
import 'package:mobx_tutorial/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Calculator cal = Calculator();
  TextEditingController first_value_controller = TextEditingController();
  TextEditingController second_value_controller = TextEditingController();

  @override
  void dispose() {
    first_value_controller.dispose();
    second_value_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Container(),
                Container(
                    width: 50,
                    height: 50,
                    child: TextFormField(
                      controller: first_value_controller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue
                      ),
                    )),
                Container(
                    width: 50,
                    height: 50,
                    child: TextFormField(
                      controller: second_value_controller,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue
                        )
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage(cal: cal)));
                      cal.plus(int.parse(first_value_controller.text), int.parse(second_value_controller.text));
                      },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 100),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage(cal: cal,)));
                      cal.minus(int.parse(first_value_controller.text), int.parse(second_value_controller.text));
                      },
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 100),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
