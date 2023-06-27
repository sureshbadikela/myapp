import 'package:flutter/material.dart';

class MyAspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9, // Set the desired aspect ratio (width:height)
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Aspect Ratio Example',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
