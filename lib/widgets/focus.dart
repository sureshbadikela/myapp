import 'package:flutter/material.dart';

class MyFocusExample extends StatefulWidget {
  @override
  _MyFocusExampleState createState() => _MyFocusExampleState();
}

class _MyFocusExampleState extends State<MyFocusExample> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (_focusNode.hasFocus != _isFocused) {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    }
  }

  void _toggleFocus() {
    if (_isFocused) {
      _focusNode.unfocus();
    } else {
      _focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Focus Example'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                focusNode: _focusNode,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(
                onPressed: _toggleFocus,
                child: Text(_isFocused ? 'Unfocus' : 'Focus'),
              ),
            ],
          ),
        )));
  }
}
