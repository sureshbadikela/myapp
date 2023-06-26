import 'package:flutter/material.dart';


class ActionsPage extends StatefulWidget {
  @override
  _ActionsPageState createState() => _ActionsPageState();
}

class _ActionsPageState extends State<ActionsPage> {
  int counter = 0;
  String message = '';

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void showMessage() {
    setState(() {
      message = 'Button Pressed!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actions Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text('Increment'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: decrementCounter,
              child: Text('Decrement'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: showMessage,
              child: Text('Show Message'),
            ),
            SizedBox(height: 16),
            Text(message),
          ],
        ),
      ),
    );
  }
}
