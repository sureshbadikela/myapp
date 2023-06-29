import 'package:flutter/material.dart';


class Myimageicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ImageIcon Example'),
        ),
        body: Center(
          child: ImageIconWidget(),
        ),
      ),
    );
  }
}

class ImageIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ImageIcon(
      NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      size: 500,
      color: Colors.red,
      semanticLabel: 'Example Icon',
    );
  }
}
