import 'package:flutter/material.dart';



class keepaliveExample extends StatefulWidget {
  @override
  _keepaliveExampleState createState() => _keepaliveExampleState();
}

class _keepaliveExampleState extends State<keepaliveExample> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KeepAlive Example'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return KeepAlive(
            keepAlive: true,
            child: ListTile(
              title: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
