import 'dart:async';
import 'package:flutter/material.dart';

class Mystreambuilder extends StatelessWidget {
  Stream<int> getDataStream() {
    return Stream.periodic(Duration(seconds: 1), (count) => count).take(10);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StreamBuilder Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('StreamBuilder Example'),
        ),
        body: Center(
          child: StreamBuilder<int>(
            stream: getDataStream(),
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasData) {
                return Text('Received data: ${snapshot.data}');
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Text('Loading...');
              }
            },
          ),
        ),
      ),
    );
  }
}
