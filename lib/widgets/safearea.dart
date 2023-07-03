import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafeArea Example'),
      ),
      body: SafeArea(
        // Set the child widget that will have safe area padding applied
        child: Container(
          color: Colors.blue,
          child: Text(
            'This is my content',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
