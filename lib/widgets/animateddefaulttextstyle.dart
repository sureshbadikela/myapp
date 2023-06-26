import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleExampleState createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleExample> {
  bool _isBigText = false;

  void _toggleTextStyle() {
    setState(() {
      _isBigText = !_isBigText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedDefaultTextStyle Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(seconds: 2),
              style: _isBigText
                  ? TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.amber)
                  : TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.blueGrey),
              child: Text('Hello, Flutter!'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleTextStyle,
              child: Text(_isBigText ? 'Make Text Smaller' : 'Make Text Bigger'),
            ),
          ],
        ),
      ),
    );
  }
}

