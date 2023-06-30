import 'package:flutter/material.dart';

/*The MetaData class in Flutter is a widget that provides additional metadata to its descendants.
 It is used to attach custom metadata to a widget subtree without affecting the layout or appearance of the UI.

The MetaData widget does not render any visual elements itself but instead passes the metadata to its descendants. 
It is commonly used in combination with other widgets like GestureDetector or Listener to associate specific data or behaviors with a widget subtree. */

class metaDataExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MetaData Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Handle tap on the widget subtree
          },
          child: MetaData(
            metaData: 'Custom Metadata',
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Text(
                'Tap Me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
