import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          color: Colors.blue,
          child: AnimatedAlign( //AnimatedAlign widget in Flutter allows you to animate the alignment and size of a child widget smoothly. It is similar to the Align widget but adds animation capabilities.
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 5),
            curve: Curves.linear,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
