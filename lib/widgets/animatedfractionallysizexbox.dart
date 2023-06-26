import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedFractionallySizedBox].
/// 
class AnimatedFractionallySizedBoxExample extends StatefulWidget {
  const AnimatedFractionallySizedBoxExample({super.key});

  @override
  State<AnimatedFractionallySizedBoxExample> createState() =>
      _AnimatedFractionallySizedBoxExampleState();
}

class _AnimatedFractionallySizedBoxExampleState
    extends State<AnimatedFractionallySizedBoxExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: SizedBox(
          width:500,
          height: 500,
          child: ColoredBox(
            color: Colors.red,
            //Animated version of FractionallySizedBox which automatically transitions the child's size over a given duration 
            //whenever the given widthFactor or heightFactor changes, as well as the position whenever the given alignment changes.
            child: AnimatedFractionallySizedBox(
              widthFactor: selected ? 0.25 : 0.75,
              heightFactor: selected ? 0.25 : 0.75,
              alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const ColoredBox(
                color: Colors.blue,
                child: FlutterLogo(size: 75),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
