import 'package:flutter/material.dart';

class Mymediaquery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the MediaQuery instance using the static `of` method
    MediaQueryData mediaQuery = MediaQuery.of(context);

    // Access different properties of MediaQueryData
    Size screenSize = mediaQuery.size;
    double textScaleFactor = mediaQuery.textScaleFactor;
    Orientation orientation = mediaQuery.orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen Size: $screenSize'),
            SizedBox(height: 20),
            Text('Text Scale Factor: $textScaleFactor'),
            SizedBox(height: 20),
            Text('Orientation: $orientation'),
          ],
        ),
      ),
    );
  }
}
