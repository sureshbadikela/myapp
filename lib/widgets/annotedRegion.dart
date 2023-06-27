import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAnnotatedRegionWidget extends StatelessWidget {
  const MyAnnotatedRegionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.blue, // Set the status bar color
        statusBarIconBrightness: Brightness.light, // Set the status bar icon color
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Annotated Region Example'),
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
