import 'package:flutter/material.dart';

/*The OverflowBox class in Flutter is a widget that controls how its child is displayed when it exceeds the available space.
 It allows you to specify how the child should be sized and positioned within the available constraints. */
 
class MyOverflowbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('OverflowBox Example'),
        ),
        body: Center(
          child: Container(
            width: 500,
            height: 100,
            color: Colors.blue,
            child: const OverflowBox(
              minWidth: 0,
              maxWidth: 300,
              minHeight: 0,
              maxHeight: 200,
              alignment: Alignment.center,
              child: Text(
                'OverflowBox Example',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
