import 'package:flutter/material.dart';

class MyComponent extends StatelessWidget {
  const MyComponent({super.key});


  @override
  Widget build(BuildContext context) {
    return const Text('Hello Flutter',style: TextStyle(fontSize: 14,color: Colors.blue),);
  }
}