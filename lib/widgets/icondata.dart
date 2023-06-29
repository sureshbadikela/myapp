/*In Flutter, the IconData class is a representation of an icon that can be used with the Icon widget.
 It encapsulates the code point and font family information required to display an icon. */
import 'package:flutter/material.dart';

class MyIconData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('IconData Example'),
        ),
        body: Center(
          child: Icon(
            IconData(
              0x2708,  // Unicode code point of the icon
              fontFamily: 'CustomIcons',  // Font family of the icon
              fontPackage: 'custom_icon_package',  // Font package name
              matchTextDirection: true,  // Whether to automatically mirror the icon based on the text direction
            ),
            size: 48,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
