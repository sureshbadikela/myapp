import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class MyTandHDetector extends StatelessWidget {
  final TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer();
  final HorizontalDragGestureRecognizer horizontalDragGestureRecognizer =
      HorizontalDragGestureRecognizer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Recognizers Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gesture Recognizers Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('Tap gesture detected!');
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Tap Me',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onHorizontalDragUpdate: (details) {
                  print('Horizontal drag position: ${details.localPosition.dx}');
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Drag Me Horizontally',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
