import 'dart:math';

import 'package:flutter/material.dart';



class clipPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipPath Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipPath Example'),
        ),
        body: Center(
          child: ClipPath(
            clipper: NSidedClipper(30),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Clip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CircularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.addOval(Rect.fromCircle(
      center: size.center(Offset.zero),
      radius: size.width / 2,
    ));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class NSidedClipper extends CustomClipper<Path> {
  final int sides;

  NSidedClipper(this.sides);

  @override
  Path getClip(Size size) {
    final path = Path();
    final angle = (2 * pi) / sides;
    final radius = size.width / 2;

    final startPoint = Offset(radius + radius * cos(0), radius + radius * sin(0));
    path.moveTo(startPoint.dx, startPoint.dy);

    for (int i = 1; i <= sides; i++) {
      final x = radius + radius * cos(angle * i);
      final y = radius + radius * sin(angle * i);
      path.lineTo(x, y);
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

