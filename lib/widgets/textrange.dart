import 'package:flutter/material.dart';

class MyTextRange extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Range Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Range Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _textEditingController,
                onChanged: (value) {
                  final selectionRange = _textEditingController.selection;
                  final selectedText = _textEditingController.text.substring(
                    selectionRange.start,
                    selectionRange.end,
                  );
                  print('Selected text: $selectedText');
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
