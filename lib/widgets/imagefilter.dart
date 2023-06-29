import 'dart:ui';
import 'package:flutter/material.dart';

class Myimagefilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ImageFiltered Example'),
        ),
        body: Center(
          child: ImageFilteredWidget(),
        ),
      ),
    );
  }
}

class ImageFilteredWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    );
  }
}
