import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class rawKeyBoardListnerExample extends StatefulWidget {
  @override
  _rawKeyBoardListnerExampleState createState() => _rawKeyBoardListnerExampleState();
}

class _rawKeyBoardListnerExampleState extends State<rawKeyBoardListnerExample> {
  RawKeyboardListener? _keyboardListener;
  String _pressedKey = '';

  @override
  void initState() {
    super.initState();
    _keyboardListener = RawKeyboardListener(
      focusNode: FocusNode(),
      onKey: (RawKeyEvent event) {
        setState(() {
          if (event is RawKeyDownEvent) {
            _pressedKey = event.logicalKey.debugName!;
          }
        });
      },
      child: Container(), // Your content goes here
    );
  }

  @override
  void dispose() {
    _keyboardListener?.focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keyboard Listener Example'),
      ),
      body: Column(
        children: [
          Text('Pressed Key: $_pressedKey'),
          Expanded(child: _keyboardListener!),
        ],
      ),
    );
  }
}
