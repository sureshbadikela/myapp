import 'package:flutter/material.dart';

/// Flutter code sample for [FractionallySizedBox].
/* It sizes its child widget based on a fraction of the available space,
 allowing you to specify the width and height factors independently. 
 The child widget is sized relative to the available space,
  making it useful for creating responsive layouts. 
  The FractionallySizedBox does not require its parent to have a specific layout behavior and can be used within
   any widget hierarchy. */

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.3,
      alignment: FractionalOffset(1, 1),
      child: Container(
        width: 1000,
        height: 500,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 4,
            ),
          ),
        ),
      ),
    );
  }
}
