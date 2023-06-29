import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [Colors.red, Colors.blue],
    );

    // final gradient = RadialGradient(
    //   center: Alignment.bottomRight,
    //   radius: 5,
    //   colors: [Colors.yellow, Colors.orange],
    // );

    //  final gradient = SweepGradient(
    //   center: Alignment.center,
    //   // startAngle: 0.0,
    //   // endAngle: 5 * 3.14, // 2π radians = 360 degrees
    //   colors: [Colors.red, Colors.blue],
    //   transform: GradientRotation(math.pi/4),
    // );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient Example'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: gradient,
          ),
          child: Center(
            child: Text(
              'Hello, Gradient!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
