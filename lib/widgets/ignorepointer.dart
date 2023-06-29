import 'package:flutter/material.dart';

class MyIgnorePointer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IgnorePointerExample(),
    );
  }
}

class IgnorePointerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IgnorePointer Example'),
      ),
      body: Center(
        child: IgnorePointer(
          ignoring: true,
          ignoringSemantics: true,
          child: ElevatedButton(
            onPressed: () {
              print('Button Pressed');
            },
            child: Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
