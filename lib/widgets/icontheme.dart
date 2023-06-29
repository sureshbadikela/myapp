import 'package:flutter/material.dart';

class Myicontheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IconThemeExample(),
    );
  }
}

class IconThemeExample extends StatelessWidget {
  const IconThemeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconTheme Example'),
      ),
      body: const Center(
        child: IconTheme(
          /*Creates an icon theme that controls properties of descendant widgets.
          Both [data] and [child] arguments must not be null. */
          data: IconThemeData(
            color: Colors.red,
            size: 48.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite),
              SizedBox(height: 16.0),
              Icon(Icons.star),
            ],
          ),
        ),
      ),
    );
  }
}
