import 'package:flutter/material.dart';


class radio extends StatefulWidget {
  const radio({super.key});

  @override
  _radioState createState() => _radioState();
}

class _radioState extends State<radio> {
  int selectedPosition = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Radio(
              value: 0,
              groupValue: selectedPosition,
              onChanged: (value) {
                print("selected $value");
                setState(() {
                  selectedPosition = value!;
                });
              }),
          Radio(
              value: 1,
              groupValue: selectedPosition,
              onChanged: (value) {
                print("selected $value");
                setState(() {
                  selectedPosition = value!;
                });
              }),
          RadioListTile(
              value: 3,
              groupValue: selectedPosition,
              title: Text("Male"),
              onChanged: (value) {
                print("selected $value");
                setState(() {
                  selectedPosition = value!;
                });
              }),
          RadioListTile(
              value: 4,
              groupValue: selectedPosition,
              title: Text("Female"),
              onChanged: (value) {
                print("selected $value");
                setState(() {
                  selectedPosition = value!;
                });
              }),
        ],
      ),
    );
  }
}