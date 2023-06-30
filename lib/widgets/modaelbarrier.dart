import 'package:flutter/material.dart';

/*The ModalBarrier class in Flutter represents a barrier that blocks user interaction with widgets behind it. 
It is often used as a background overlay for modal dialogs or overlays to prevent interaction with the underlying content. */

class MyModalDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Modal Dialog'),
                  content: Text('This is a modal dialog.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Open Modal Dialog'),
        ),
      ),
    );
  }
}
