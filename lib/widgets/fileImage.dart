 import 'dart:io';
import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  final File imageFile;

  const MyImageWidget({required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: FileImage(imageFile),
      fit: BoxFit.cover,
      // other image properties...
    );
  }
}


