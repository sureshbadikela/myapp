import 'package:flutter/material.dart';


class boxConstrains extends StatelessWidget {
  const boxConstrains({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxConstraints Example'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 100,
            maxWidth: 300,
            maxHeight: 300,
          ),
          color: Colors.blue,
          child: Text('Constrained Container'),
        ),
      ),
    );
  }
}
