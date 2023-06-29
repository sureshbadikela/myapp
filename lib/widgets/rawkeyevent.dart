import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class rawkeyevents extends StatefulWidget {
  @override
  _rawkeyeventsState createState() => _rawkeyeventsState();
}

class _rawkeyeventsState extends State<rawkeyevents> {
  RawKeyboardListener? _keyboardListener;
  String _pressedKey = '';
  String _releasedKey = '';
  String _repeatedKey = '';

  @override
  void initState() {
    super.initState();
    _keyboardListener = RawKeyboardListener(
      focusNode: FocusNode(),
      onKey: (RawKeyEvent event) {
        if (event is RawKeyDownEvent) {
          final keyEvent = event.logicalKey;
          setState(() {
            _pressedKey = (keyEvent.keyLabel ?? keyEvent.debugName)!;
          });
        } else if (event is RawKeyUpEvent) {
          final keyEvent = event.logicalKey;
          setState(() {
            _releasedKey = (keyEvent.keyLabel ?? keyEvent.debugName)!;
          });
        } 
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
          Text('Released Key: $_releasedKey'),
          Text('Repeated Key: $_repeatedKey'),
          Expanded(child: _keyboardListener!),
        ],
      ),
    );
  }
}
