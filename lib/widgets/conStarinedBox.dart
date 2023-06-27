import 'package:flutter/material.dart';

class constarinedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ConstrainedBox Example'),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100.0,
              maxWidth: 200.0,
              minHeight: 50.0,
              maxHeight: 100.0,
            ),
            child: Container(
              color: Colors.blue,
              width: 150.0,
              height: .0,
            ),
          ),
        ),
      ),
    );
  }
}
