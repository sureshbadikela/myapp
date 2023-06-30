import 'package:flutter/material.dart';

// class Mylongpressdraggable extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('example'),
//         ),
//         body: Center(
//           child: LongPressDraggable(
//             key: ValueKey(1),
//             feedback: Container(
//               width: 120,
//               height: 120,
//               color: Colors.green,
//               child: const Center(
//                 child: Text(
//                   'Dragging',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             data: 'Custom Data',
//             axis: Axis.vertical,
//             childWhenDragging: Container(
//               width: 100,
//               height: 100,
//               color: Colors.blue.withOpacity(0.5),
//             ),
//             feedbackOffset: Offset(20, 20),
//             dragAnchorStrategy: childDragAnchorStrategy,
//             maxSimultaneousDrags: 1,
//             onDragStarted: () {
//               print('Drag Started');
//             },
//             onDragUpdate: (details) {
//               print('Drag Update: ${details.delta}');
//             },
//             onDraggableCanceled: (velocity, offset) {
//               print('Draggable Canceled');
//             },
//             onDragEnd: (details) {
//               print('Drag End');
//             },
//             onDragCompleted: () {
//               print('Drag Completed');
//             },
//             hapticFeedbackOnStart: true,
//             ignoringFeedbackSemantics: true,
//             ignoringFeedbackPointer: true,
//             delay: Duration(milliseconds: 500),
//             child: Container(
//               width: 100,
//               height: 100,
//               color: Colors.blue,
//               child: const Center(
//                 child: Text(
//                   'Drag Me',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class Mylongpressdraggable extends StatefulWidget {
  @override
  _MylongpressdraggableState createState() => _MylongpressdraggableState();
}

class _MylongpressdraggableState extends State<Mylongpressdraggable> {
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('example'),
        ),
        body: Center(
          child: LongPressDraggable(
            key: ValueKey(1),
            feedback: Container(
              width: 120,
              height: 120,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Dragging',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            data: 'Custom Data',
            axis: Axis.vertical,
            childWhenDragging: Container(
              width: 100,
              height: 100,
              color: Colors.blue.withOpacity(0.5),
            ),
            feedbackOffset: Offset(20, 20),
            dragAnchorStrategy: childDragAnchorStrategy,
            maxSimultaneousDrags: 1,
            onDragStarted: () {
              print('Drag Started');
            },
            onDragUpdate: (details) {
              setState(() {
                x += details.delta.dx;
                y += details.delta.dy;
              });
            },
            onDraggableCanceled: (velocity, offset) {
              print('Draggable Canceled');
            },
            onDragEnd: (details) {
              print('Drag End');
            },
            onDragCompleted: () {
              print('Drag Completed');
            },
            hapticFeedbackOnStart: true,
            ignoringFeedbackSemantics: true,
            ignoringFeedbackPointer: true,
            delay: Duration(milliseconds: 500),
            child: Container(
              margin: EdgeInsets.only(left: x, top: y),
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Drag Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

