import 'package:flutter/material.dart';

class absorverpoint extends StatelessWidget {
  const absorverpoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AbsorbPointer( // This widget to listen the pointer events by passing absorbing boolean value.
      absorbing: false,
      child: GestureDetector(
        onTap: (){
          print('absorber Pointer activated');
        },
        child: const Text('Tap me'),
      ),
    ));
  }
}
