import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  _AnimatedPositionedExampleState createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _isPositioned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned Example'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            left: _isPositioned ? 100 : 10,
            top: _isPositioned ? 100 : 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isPositioned = !_isPositioned;
                });
              },
              child: Text(_isPositioned ? 'Reset' : 'Animate'),
            ),
          ),
        ],
      ),
    );
  }
}

