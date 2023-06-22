import 'package:flutter/material.dart';

class MyComponent extends StatelessWidget {
  const MyComponent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SizedBox(
          width: 400,
            child: MyComponent1(),
        ),
      ),
    );
  }
}

class MyComponent1 extends StatelessWidget {
  const MyComponent1();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Welcome!', style: Theme.of(context).textTheme.displayMedium),
      // Your component's UI code goes here
    );
  }
}
