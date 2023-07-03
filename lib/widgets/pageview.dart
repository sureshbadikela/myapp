/*The PageView class in Flutter is a widget that allows you to create a scrollable list of pages or screens.
 It is commonly used to implement features such as image galleries, onboarding screens, and swiping 
 between different views. */
 import 'package:flutter/material.dart';


class MyPageview extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageView Example'),
        ),
        body: PageView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Container(
              color: colors[index],
              child: Center(
                child: Text(
                  'Page ${index + 1}',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
