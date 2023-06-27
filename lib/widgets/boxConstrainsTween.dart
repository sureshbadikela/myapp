import 'package:flutter/material.dart';

class BoxConstraintsTween extends Tween<BoxConstraints> {
  BoxConstraintsTween({
    required BoxConstraints begin,
    required BoxConstraints end,
  }) : super(begin: begin, end: end);

  @override
  BoxConstraints lerp(double t) {
    return BoxConstraints.lerp(begin, end, t)!;
  }
}


class boxConstrainsTween extends StatefulWidget {
  const boxConstrainsTween({super.key});

  @override
  State<boxConstrainsTween> createState() => _boxConstrainsTweenState();
}

class _boxConstrainsTweenState extends State<boxConstrainsTween> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<BoxConstraints> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    final BoxConstraints beginConstraints = BoxConstraints(
      minWidth: 100,
      minHeight: 100,
    );

    final BoxConstraints endConstraints = BoxConstraints(
      minWidth: 200,
      minHeight: 200,
    );

    _animation = BoxConstraintsTween(
      begin: beginConstraints,
      end: endConstraints,
    ).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoxConstraintsTween Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BoxConstraintsTween Example'),
        ),
        body: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return Container(
                width: _animation.value.minWidth,
                height: _animation.value.minHeight,
                color: Colors.blue,
                child: const Text(
                  'Animated Container',
                  style: TextStyle(fontSize: 20),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
