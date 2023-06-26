import 'package:flutter/material.dart';

class align extends StatelessWidget {
  const align({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        height: 200,
        width: 200,
        child: Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/dices.png'),
            ),
          ),
        ));
  }
}
