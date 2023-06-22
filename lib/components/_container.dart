import 'package:flutter/material.dart';

class ContainerElement extends StatelessWidget {
  const ContainerElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      transform:Matrix4.translationValues(560, 200, 0),
      color: Colors.lightBlueAccent,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: const Text('hello',style: TextStyle(fontSize: 15,color: Colors.white),),
    );
  }
}
