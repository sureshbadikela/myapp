import 'package:flutter/material.dart';

/*
In Flutter, the LayoutBuilder class is a widget that allows you to create a widget tree whose layout 
is based on the constraints provided by its parent. It's a powerful tool for building responsive and dynamic UI.
The LayoutBuilder widget takes a builder function as a parameter, which provides the context and the constraints of the parent widget.
 The builder function is called whenever the layout constraints change, allowing you to rebuild the UI based on the new constraints. */

class MyLayoutbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LayoutBuilder Example'),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth > 600) {
                  return _buildWideContainer();
                } else {
                  return _buildNarrowContainer();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWideContainer() {
    return Container(
      width: 400,
      height: 200,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Wide Container',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildNarrowContainer() {
    return Container(
      width: 200,
      height: 100,
      color: Colors.green,
      child:  const Center(
        child: Text(
          'Narrow Container',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
