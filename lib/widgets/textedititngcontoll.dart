import 'package:flutter/material.dart';

/*The TextEditingController class in Flutter is used to control the text input in a TextField widget. It 
allows you to retrieve the current value of the text input, set an initial value, and listen for changes to the text input. */
class MytextEditingontrol extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Input Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Input Example'),
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
                  String enteredText = _textEditingController.text;
                  print('Entered text: $enteredText');
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
