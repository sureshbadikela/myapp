import 'package:flutter/material.dart';

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  // Simulating an asynchronous data fetching operation
  return 'Hello, AsyncSnapshot!';
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: fetchData(),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return Text('Data: ${snapshot.data}');
        }
      },
    );
  }
}
