import 'package:flutter/material.dart';

class CustomObject {
  final int id;
  final String name;

  CustomObject(this.id, this.name);
}

class MyWidget extends StatefulWidget {
  final CustomObject customObject;

  MyWidget({required this.customObject, required GlobalObjectKey<MyWidgetState> key});

  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('Custom Object ID: ${widget.customObject.id}\n'
        'Custom Object Name: ${widget.customObject.name}');
  }
}

class MyGlobalobjectkey extends StatelessWidget {
  final CustomObject customObject = CustomObject(1, 'Example Object');
  final GlobalObjectKey<MyWidgetState> objectKey = GlobalObjectKey<MyWidgetState>(MyWidgetState());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GlobalObjectKey Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyWidget(key: objectKey, customObject: customObject),
            ],
          ),
        ),
      ),
    );
  }
}
