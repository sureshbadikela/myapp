import 'package:flutter/material.dart';


class Mytextposition extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Position Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Position Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _textEditingController,
                onChanged: (value) {
                  final currentPosition = _textEditingController.selection.baseOffset;//text position
                  print('Current cursor position: $currentPosition');
                },
                decoration: InputDecoration(
                  labelText: 'Enter text',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
