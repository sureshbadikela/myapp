import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    // Define the custom painting logic
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Return true if the painting should be repainted
    return false;
  }
}

class MycustompaintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Paint Example'),
      ),
      body: Center(
        child: CustomPaint(
          painter: MyCustomPainter(),
          child: Container(
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}


