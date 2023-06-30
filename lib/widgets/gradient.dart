import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      // colors: [Colors.red, Colors.blue],
      colors:[
        Color(0xff1f005c),
        Color(0xff5b0060),
        Color(0xff870160),
        Color(0xffac255e),
        Color(0xffca485c),
        Color(0xffe16b5c),
        Color(0xfff39060),
        Color(0xffffb56b),
      ], // Gradient from https://learnui.design/tools/gradient-generator.html
      tileMode: TileMode.mirror,
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
