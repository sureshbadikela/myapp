import 'package:flutter/material.dart';
//A box that limits its size only when it's unconstrained.
/*while both LimitedBox and ConstrainedBox can be used to constrain the size of a child widget,
 LimitedBox is specifically useful when dealing with widgets that rely on intrinsic dimensions
  and prefer to maintain their original size, while ConstrainedBox provides more general flexibility for setting
   and enforcing size constraints. */

class Mylimitedbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LimitedBox Example'),
        ),
        body: Center(
          child: LimitedBox(
            maxWidth: 200,
            maxHeight: 200,
            child: Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            ),
          ),
        ),
      ),
    );
  }
}
