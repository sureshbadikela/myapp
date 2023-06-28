import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDefaultMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DefaultPlatformMenuDelegate Example'),
      ),
      body: Center(
        child: PopupMenuButton(
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              value: 1,
              child: Text('Item 1'),
            ),
            PopupMenuItem(
              value: 2,
              child: Text('Item 2'),
            ),
            PopupMenuItem(
              value: 3,
              child: Text('Item 3'),
            ),
          ],
          onSelected: (value) {
            // Handle menu item selection
            print('Selected item: $value');
          },
          // Set the delegate to DefaultPlatformMenuDelegate
          // for the default platform-specific behavior
          // (Cupertino-style on iOS/macOS, Material-style on others)
          // delegate: DefaultPlatformMenuDelegate(),
        ),
      ),
    );
  }
}
