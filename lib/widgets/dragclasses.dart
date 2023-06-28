import 'package:flutter/material.dart';

class alldrag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drag and Drop Example'),
        ),
        body: DragAndDropScreen(),
      ),
    );
  }
}

class DragAndDropScreen extends StatefulWidget {
  @override
  _DragAndDropScreenState createState() => _DragAndDropScreenState();
}

class _DragAndDropScreenState extends State<DragAndDropScreen> {
  List<Color> boxColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  Color? draggedColor;
  int? draggedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable<Color>(
              data: boxColors[0],
              child: DragBox(color: boxColors[0]),
              feedback: DragBox(color: boxColors[0], isDragging: true),
              childWhenDragging: DragBox(color: boxColors[0], isVisible: false),
              onDragStarted: () {
                setState(() {
                  draggedColor = boxColors[0];
                  draggedIndex = 0;
                });
              },
              onDragEnd: (DraggableDetails details) {
                setState(() {
                  draggedColor = null;
                  draggedIndex = null;
                });
              },
            ),
            Draggable<Color>(
              data: boxColors[1],
              child: DragBox(color: boxColors[1]),
              feedback: DragBox(color: boxColors[1], isDragging: true),
              childWhenDragging: DragBox(color: boxColors[1], isVisible: false),
              onDragStarted: () {
                setState(() {
                  draggedColor = boxColors[1];
                  draggedIndex = 1;
                });
              },
              onDragEnd: (DraggableDetails details) {
                setState(() {
                  draggedColor = null;
                  draggedIndex = null;
                });
              },
            ),
            Draggable<Color>(
              data: boxColors[2],
              child: DragBox(color: boxColors[2]),
              feedback: DragBox(color: boxColors[2], isDragging: true),
              childWhenDragging: DragBox(color: boxColors[2], isVisible: false),
              onDragStarted: () {
                setState(() {
                  draggedColor = boxColors[2];
                  draggedIndex = 2;
                });
              },
              onDragEnd: (DraggableDetails details) {
                setState(() {
                  draggedColor = null;
                  draggedIndex = null;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 20),
        DragTarget<Color>(
          builder: (BuildContext context, List<Color?> candidateData, List<dynamic> rejectedData) {
            return DragBox(
              color: draggedColor,
              isTarget: true,
              isVisible: draggedColor == null,
            );
          },
          onAccept: (Color color) {
            setState(() {
              boxColors[draggedIndex!] = color;
            });
          },
        ),
      ],
    );
  }
}

class DragBox extends StatelessWidget {
  final Color? color;
  final bool isDragging;
  final bool isVisible;
  final bool isTarget;

  DragBox({
    this.color,
    this.isDragging = false,
    this.isVisible = true,
    this.isTarget = false,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isVisible ? 1.0 : 0.0,
      child: Container(
        width: 100,
        height: 100,
        color: isTarget ? Colors.grey[300] : color,
        child: Center(
          child: Text(
            isDragging ? 'Dragging' : 'Drag Me',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
