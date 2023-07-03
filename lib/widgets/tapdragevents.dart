import 'package:flutter/material.dart';


class MyTagdragevents extends StatelessWidget {
  void onDragDown(DragDownDetails details) {
    print('Drag down at global position: ${details.globalPosition}');
    print('Drag down at local position: ${details.localPosition}');
  }

  void onDragStart(DragStartDetails details) {
    print('Drag start at global position: ${details.globalPosition}');
    print('Drag start at local position: ${details.localPosition}');
  }

  void onDragUpdate(DragUpdateDetails details) {
    print('Drag update delta: ${details.delta}');
    print('Drag update primary delta: ${details.primaryDelta}');
  }

  void onDragEnd(DragEndDetails details) {
    print('Drag end velocity: ${details.velocity}');
    print('Drag end primary velocity: ${details.primaryVelocity}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drag Details Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drag Details Example'),
        ),
        body: GestureDetector(
          onPanDown: onDragDown,
          onPanStart: onDragStart,
          onPanUpdate: onDragUpdate,
          onPanEnd: onDragEnd,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Drag Me',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
