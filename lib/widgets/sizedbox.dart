/*The SizedBox class in Flutter is a widget that provides a box with a specific width, height, or both.
 It allows you to define fixed dimensions for your widgets, giving you control over the size of your UI elements */
import 'package:flutter/material.dart';

class Mysizedbox extends StatelessWidget {
  const Mysizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      width: 200,
      height: 50,
      child: Container(
        color: Colors.blue,
        child: const Center(
          child: Text('SizedBox Example',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
