import 'package:flutter/material.dart';

/*The RichText widget in Flutter is used to display text with multiple styles and formatting within a single widget.
 It allows you to apply different styles to different parts of the text by using InlineSpan objects. */
 
class Myrichtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: 'Hello, ',
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'world!',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
