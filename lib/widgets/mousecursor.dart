import 'package:flutter/material.dart';

/// Flutter code sample for [MouseCursor].
class MouseCursorExample extends StatelessWidget {
  const MouseCursorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.yellow),
          ),
        ),
      ),
    );
  }
}
