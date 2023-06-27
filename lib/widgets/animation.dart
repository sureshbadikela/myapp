import 'package:flutter/material.dart';

class MyAnimationWidget extends StatefulWidget {
  @override
  _MyAnimationWidgetState createState() => _MyAnimationWidgetState();
}

class _MyAnimationWidgetState extends State<MyAnimationWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController
    _animationController = AnimationController(
      duration: Duration(seconds: 6),
      vsync: this,
    );

    // Create an Animation
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController!);

    // Start the animation
    _animationController!.forward();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation!,
        builder: (context, child) {
          return Opacity(
            opacity: _animation!.value,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
