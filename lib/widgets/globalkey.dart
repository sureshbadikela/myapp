import 'package:flutter/material.dart';

class globalkey extends StatelessWidget {
  /*you can use GlobalKey without specifying a type argument if you don't need to
   access specific properties or methods of the associated state. */
  final GlobalKey textFieldKey = GlobalKey();
  
  /*you can use GlobalKey by specifying a type argument if you  need to
   access specific properties or methods of the associated state. */
  // final GlobalKey<FormFieldState<String>> textFieldKey =
  //     GlobalKey<FormFieldState<String>>();

  void clearTextField() {
    // textFieldKey.currentState!.reset();
    final FormFieldState<String>? textFieldState =
        textFieldKey.currentState as FormFieldState<String>?;
    textFieldState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GlobalKey Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                key: textFieldKey,
                decoration: InputDecoration(labelText: 'Enter text'),
              ),
              ElevatedButton(
                onPressed: clearTextField,
                child: Text('Clear Text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
