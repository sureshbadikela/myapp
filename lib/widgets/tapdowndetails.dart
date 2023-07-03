import 'package:flutter/material.dart';

class MyTapDown extends StatelessWidget {
  void onTapDown(TapDownDetails details) {
    print('Tap down at global position: ${details.globalPosition}');
    print('Tap down at local position: ${details.localPosition}');
    print('Input device kind: ${details.kind}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Down Details Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tap Down Details Example'),
        ),
        body: GestureDetector(
          onTapDown: onTapDown,
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
      ),
    );
  }
}
