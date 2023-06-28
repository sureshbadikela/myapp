import 'package:flutter/material.dart';

class MyEditableText extends StatefulWidget {
  @override
  _MyEditableTextState createState() => _MyEditableTextState();
}

class _MyEditableTextState extends State<MyEditableText> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditableText Example'),
      ),
      body: Center(
        child: EditableText(
          controller: _controller,
          focusNode: _focusNode, // Added the required focusNode argument
          style: TextStyle(fontSize: 16.0),
          cursorColor: Colors.blue,
          backgroundCursorColor: Colors.grey,
          onChanged: (value) {
            // Handle text changes here
            print('Text changed: $value');
          },
          onSubmitted: (value) {
            // Handle submission of text here
            print('Text submitted: $value');
          },
        ),
      ),
    );
  }
}


