import 'package:flutter/material.dart';

class alertElement extends StatelessWidget {
  const alertElement({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        createAlert(context);
      },
      child: const Text('alert'),
    );
  }

  createAlert(BuildContext context) {
    var alertDialog = AlertDialog(
      title: const Text('hello'),
      content: const Text('hello'),
      actions: <Widget>[
        GestureDetector(
          child: const Text('close'),
          onTap: () => {Navigator.pop(context)},
        ),
        GestureDetector(
          child: const Text('submit'),
          onTap: () {
            print('data');
            Navigator.pop(context);
          },
        ),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
