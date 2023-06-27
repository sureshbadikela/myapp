import 'package:flutter/material.dart';

class borderside extends StatelessWidget {
  const borderside({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BorderSide Example'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            border: Border(
              //adding borderes to each indivusual sides
              top: BorderSide(
                color: Colors.red,
                width: 2.0,
                style: BorderStyle.solid,
              ),
              bottom: BorderSide(
                color: Colors.blue,
                width: 4.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Center(
            child: Text(
              'Container with Custom Border',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
