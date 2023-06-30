import 'package:flutter/material.dart';

/// Flutter code sample for [Listener].
/*It listens to events that can construct gestures, such as when the pointer is pressed, moved, then released or canceled.

It does not listen to events that are exclusive to mouse, such as when the mouse enters, 
exits or hovers a region without pressing any buttons. For these events, use MouseRegion.

Rather than listening for raw pointer events, consider listening for higher-level gestures using GestureDetector. */

class ListenerApp extends StatelessWidget {
  const ListenerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Listener Sample')),
        body: const Center(
          child: ListenerExample(),
        ),
      ),
    );
  }
}

class ListenerExample extends StatefulWidget {
  const ListenerExample({super.key});

  @override
  State<ListenerExample> createState() => _ListenerExampleState();
}

class _ListenerExampleState extends State<ListenerExample> {
  int _downCounter = 0;
  int _upCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementDown(PointerEvent details) {
    _updateLocation(details);
    setState(() {
      _downCounter++;
    });
  }

  void _incrementUp(PointerEvent details) {
    _updateLocation(details);
    setState(() {
      _upCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(const Size(300.0, 200.0)),
      child: Listener(
        onPointerDown: _incrementDown,
        onPointerMove: _updateLocation,
        onPointerUp: _incrementUp,
        child: ColoredBox(
          color: Colors.lightBlueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                  'You have pressed or released in this area this many times:'),
              Text(
                '$_downCounter presses\n$_upCounter releases',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'The cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
