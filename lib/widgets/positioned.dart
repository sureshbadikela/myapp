import 'package:flutter/material.dart';

/*The Positioned class in Flutter is a widget that allows you to position a child widget within 
a Stack widget using explicit coordinates or relative positioning. */

class MyPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              top: 50,
              right: 50,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
