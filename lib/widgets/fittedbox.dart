import 'package:flutter/material.dart';

class fittedbox extends StatelessWidget {
  const fittedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.blue,
      child: const FittedBox(
        // TRY THIS: Try changing the fit types to see how they change the way
        // the placeholder fits into the container.
        fit: BoxFit.fill,
        child: Placeholder(),
      ),
    );
    Scaffold(
        //The FittedBox class in Flutter is a widget that scales and positions its child within itself.
        //It ensures that the child fits within the available space while maintaining its aspect ratio.
//The FittedBox widget is particularly useful when you want to fit a larger child widget within a smaller space without distorting its proportions.
//It can be used to scale and position images, icons, text, or any other widget that needs to be adjusted to fit within a given container.
//Note that the FittedBox widget can only have one child widget.
        body: FittedBox(
      fit: BoxFit.contain,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text('Example'),
      ),
    ));
  }
}
