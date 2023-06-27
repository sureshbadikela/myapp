import 'package:flutter/material.dart';

class decoratedbox extends StatelessWidget {
  const decoratedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            //The DecorationImage class in Flutter is used to define an image as part of the decoration for a widget, 
            //such as BoxDecoration. 
            //It allows you to add images to backgrounds, borders, or other visual elements of your UI.
            image: DecorationImage(
              image: Image.asset('assets/dices.png').image,
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              'Hello, DecorationImage!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        );
  }
}
