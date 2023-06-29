import 'package:flutter/material.dart';

/*The InlineSpan class in Flutter represents a span of styled or formatted text that can be used within 
a TextSpan or RichText widget. It is an abstract class and serves as the base class for various types of text spans,
 such as TextSpan, WidgetSpan, and PlaceholderSpan. */

class MyInlinespan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('InlineSpan Example'),
        ),
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: 'Hello, ',
              style: TextStyle(color: Colors.black),
              children: <InlineSpan>[
                TextSpan(
                  text: 'world',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '!',
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
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
