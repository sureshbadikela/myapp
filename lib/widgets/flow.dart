import 'package:flutter/material.dart';

/*In Flutter, the Flow widget is used to create custom flow layouts.
 It allows you to arrange child widgets in a flow-like manner, 
 where the widgets can flow across multiple lines based on the available space.
The Flow widget provides more flexibility and control over the positioning of child widgets compared to other layout widgets
  like Row or Wrap. */

class MyFlowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flow Layout'),
      ),
      body: Flow(
        delegate: MyFlowDelegate(), // Define the delegate for custom layout.A delegate that controls the appearance of a flow layout.
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 80,
            height: 120,
          ),
          Container(
            color: Colors.blue,
            width: 120,
            height: 80,
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.orange,
            width: 80,
            height: 120,
          ),
          Container(
            color: Colors.purple,
            width: 120,
            height: 80,
          ),
        ],
      ),
    );
  }
}

class MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    // Position and layout the children within the available space
    var x = 0.0;
    var y = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      var childSize = context.getChildSize(i);
      var childWidth = childSize!.width;
      var childHeight = childSize!.height;

      if (x + childWidth > context.size.width) {
        // Move to the next line if the current line is full
        x = 0.0;
        y += childHeight;
      }

      // Position the child
      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0.0),
      );

      // Update the x position for the next child
      x += childWidth;
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    // Return the size of the flow layout
    return Size(double.infinity, 300); // Customize the size as needed
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    // Re-layout the children only if the delegate changes
    return oldDelegate != this;
  }
}
