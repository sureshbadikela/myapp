import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalExample extends StatefulWidget {
  const AnimatedPositionedDirectionalExample({super.key});

  @override
  _AnimatedPositionedDirectionalExampleState createState() =>
      _AnimatedPositionedDirectionalExampleState();
}

class _AnimatedPositionedDirectionalExampleState
    extends State<AnimatedPositionedDirectionalExample> {
  bool _isPositioned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositionedDirectional Example'),
      ),
      body: Stack(
        children: [
          AnimatedPositionedDirectional(
            duration: Duration(seconds: 1),
            start: _isPositioned ? 10 : null,
            top: _isPositioned ? 50 : null,
            end: _isPositioned ? null : 10,
            bottom: _isPositioned ? null : 100,
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


