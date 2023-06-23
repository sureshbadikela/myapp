import 'package:flutter/material.dart';

class CheckBoxElement extends StatefulWidget {
  const CheckBoxElement({super.key});

  @override
  _CheckBoxElementState createState() => _CheckBoxElementState();
}

class _CheckBoxElementState extends State<CheckBoxElement> {
  bool isChecked = true;
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              value: isCheck,
              onChanged: (val) {
                print("check $val");
                setState(() {
                  isCheck = !isCheck;
                });
              }),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: isChecked,
            onChanged: (val) {
              print("check $val");
              setState(() {
                isChecked = !isChecked;
              });
            },
            title: const Text("Accept Terms and Condition"),
          )
        ],
      ),
    );
  }
}
