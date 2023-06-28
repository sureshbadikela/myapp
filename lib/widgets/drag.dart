import 'package:flutter/material.dart';

class DragExample extends StatefulWidget {
  @override
  _DragExampleState createState() => _DragExampleState();
}

class _DragExampleState extends State<DragExample> {
  double _topPosition = 0.0;
  double _leftPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag Example'),
      ),
      body: Draggable(
  child: Stack(
    children: [
      Positioned(
        top: _topPosition,
        left: _leftPosition,
        child: Container(
          width: 100.0,
          height: 100.0,
          color: Colors.blue,
        ),
      ),
    ],
  ),
  feedback: Container(
    width: 100.0,
    height: 100.0,
    color: Colors.blue.withOpacity(0.5),
  ),
  childWhenDragging: Container(
    width: 100.0,
    height: 100.0,
    color: Colors.blue.withOpacity(0.2),
  ),
  onDragStarted: () {
    print('Drag started');
  },
  onDragEnd: (details) {
    setState(() {
      // _topPosition += details.offset.dy;
      // _leftPosition += details.offset.dx;
    });
    print('Drag ended');
  },
)

      // GestureDetector(
      //   onPanDown: (DragDownDetails details) {
      //     print('Drag down at ${details.localPosition}');
      //   },
      //   onPanStart: (DragStartDetails details) {
      //     print('Drag started at ${details.localPosition}');
      //   },
      //   onPanUpdate: (DragUpdateDetails details) {
      //     print('Drag updated at ${details.localPosition}');
      //     setState(() {
      //       _topPosition += details.delta.dy;
      //       _leftPosition += details.delta.dx;
      //     });
      //   },
      //   onPanEnd: (DragEndDetails details) {
      //     print('Drag ended with velocity ${details.velocity}');
      //   },
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         top: _topPosition,
      //         left: _leftPosition,
      //         child: Container(
      //           width: 100.0,
      //           height: 100.0,
      //           color: Colors.blue,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
