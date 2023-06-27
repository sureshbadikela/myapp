import 'package:flutter/material.dart';

class border extends StatelessWidget {
  const border({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border Example'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: Colors.blue,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: const Center(
            child: Text(
              'Container with Border',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
