import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _containerWidth = 100.0;
  double _containerHeight = 100.0;
  Color _containerColor = Colors.blue;

  void _changeContainerProperties() {
    setState(() {
      final random = Random();
      _containerWidth = random.nextInt(200).toDouble() + 100;
      _containerHeight = random.nextInt(200).toDouble() + 100;
      _containerColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _changeContainerProperties,
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _containerWidth,
            height: _containerHeight,
            color: _containerColor,
            child: const Center(
              child: Text(
                'Tap to Change',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

