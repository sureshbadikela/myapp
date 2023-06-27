import 'package:flutter/material.dart';

class blockSemantics extends StatelessWidget {
  const blockSemantics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlockSemantics Example'),
      ),
      body: Center(
        child: BlockSemantics(
          blocking: true, // Set to false to allow semantics to pass through
          child: GestureDetector(
            onTap: () {
              print('BlockSemantics area tapped!');
            },
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'BlockSemantics Widget',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
