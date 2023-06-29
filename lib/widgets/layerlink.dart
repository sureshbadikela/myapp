import 'package:flutter/material.dart';

/*The LayerLink class in Flutter is a utility class that establishes a connection
 between two layers in the rendering hierarchy. It is often used in conjunction with the
  CompositedTransformTarget and CompositedTransformFollower widgets to create complex UI effects or implement custom rendering behavior. */

class layerlink extends StatelessWidget {
  final LayerLink _layerLink = LayerLink();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LayerLink Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CompositedTransformTarget(
                link: _layerLink,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              CompositedTransformFollower(
                link: _layerLink,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
