import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  _AnimatedPhysicalModelExampleState createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPhysicalModel Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTapDown: (details) {
            setState(() {
              _isPressed = true;
            });
          },
          onTapUp: (details) {
            setState(() {
              _isPressed = false;
            });
          },
         // AnimatedPhysicalModel is a widget in Flutter that animates the properties of a PhysicalModel widget. 
         //The PhysicalModel widget allows you to apply physical effects, such as elevation and shadow, to a child widget.
          child: AnimatedPhysicalModel(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            elevation: _isPressed ? 30.0 : 0.0,
            color: Colors.blue,
            shadowColor: Colors.black,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Press Me',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


