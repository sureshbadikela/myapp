import 'package:flutter/material.dart';

class MyListBody extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListBody Example'),
        ),
        body: Container(
          color: Colors.white, // Set the background color of ListBody
          //This widget is rarely used directly. Instead, consider using ListView, 
          child: ListBody(
            mainAxis: Axis.vertical,
            children: items.map((item) => Text(item)).toList(),
          ),
        ),
      ),
    );
  }
}
