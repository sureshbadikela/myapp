import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';



class compoundAimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fadeController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: TestVSync(),
    );
    var scaleController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: TestVSync(),
    );

    var compoundAnimation = CompoundAnimation();
    compoundAnimation.addAnimation(fadeController);
    compoundAnimation.addAnimation(scaleController);

    compoundAnimation.play(); // Plays all animations in the collection

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Compound Animation Example'),
        ),
        body: Center(
          child: ScaleAnimation(
            controller: scaleController,
            child: FadeAnimation(
              controller: fadeController,
              child: Text(
                'Hello, Compound Animation!',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CompoundAnimation {
  List<AnimationController> _controllers = [];

  void addAnimation(AnimationController controller) {
    _controllers.add(controller);
  }

  void play() {
    for (var controller in _controllers) {
      controller.forward();
    }
  }

  void stop() {
    for (var controller in _controllers) {
      controller.stop();
    }
  }
}

class FadeAnimation extends StatelessWidget {
  final AnimationController controller;
  final Widget child;

  FadeAnimation({required this.controller, required this.child})
      : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween(begin: 0.0, end: 1.0).animate(controller),
      child: child,
    );
  }
}

class ScaleAnimation extends StatelessWidget {
  final AnimationController controller;
  final Widget child;

  ScaleAnimation({required this.controller, required this.child})
      : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween(begin: 0.0, end: 1.0).animate(controller),
      child: child,
    );
  }
}

class TestVSync extends TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
