import 'package:flutter/material.dart';

class MytextDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Decoration Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Decoration Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Underlined Text',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationThickness: 2.0,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Strikethrough Text',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.red,
                  decorationThickness: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
