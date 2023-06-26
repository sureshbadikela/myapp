import 'package:flutter/material.dart';

class AnimatedModalBarrierExample extends StatefulWidget {
  @override
  _AnimatedModalBarrierExampleState createState() =>
      _AnimatedModalBarrierExampleState();
}

class _AnimatedModalBarrierExampleState
    extends State<AnimatedModalBarrierExample>
    with SingleTickerProviderStateMixin {
  bool _showBarrier = false;
  late final AnimationController _animationController;
  late final Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = ColorTween(
      begin: Colors.transparent,
      end: Colors.black54,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  void _toggleBarrier() {
    setState(() {
      _showBarrier = !_showBarrier;
      if (_showBarrier) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedModalBarrier Example'),
      ),
      body: Stack(
        children: [
          // Your main content goes here
          Center(
            child: ElevatedButton(
              onPressed: _toggleBarrier,
              child: Text('Toggle Barrier'),
            ),
          ),
          if (_showBarrier)
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return IgnorePointer(
                  ignoring: !_showBarrier,
                  child: Container(
                    color: _animation.value,
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}

