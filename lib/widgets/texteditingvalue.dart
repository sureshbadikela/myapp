import 'package:flutter/material.dart';


class MyTextediting extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Editing Value Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Editing Value Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Enter your text',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  TextEditingValue value = _textEditingController.value;
                  print('Text: ${value.text}');
                  print('Selection: ${value.selection}');
                  print('Composing: ${value.composing}');
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
