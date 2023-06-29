import 'package:flutter/material.dart';

/* The FutureBuilder widget is a powerful tool for handling asynchronous data and updating the UI based on different states.
 It simplifies the process of handling and displaying data from Futures in a clean and concise manner. */

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data loaded');
}

class Futuredata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
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
      ),
    );
  }
}
