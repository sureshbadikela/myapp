import 'package:flutter/material.dart';


class MyTextSelection extends StatefulWidget {
  @override
  State<MyTextSelection> createState() => _MyTextSelectionState();
}

class _MyTextSelectionState extends State<MyTextSelection> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Selection Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Selection Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _textEditingController,
                onChanged: (value) {
                  final selection = _textEditingController.selection;
                  final selectedText = _textEditingController.text.substring(
                    selection.start,
                    selection.end,
                  );
                  print('Selected text: $selectedText');
                },
                decoration: InputDecoration(
                  labelText: 'Enter text',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final newSelection = TextSelection(
                    baseOffset: 0,
                    extentOffset: _textEditingController.text.length,
                    
                  );
                  _textEditingController.selection = newSelection;
                },
                child: Text('Select All'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
