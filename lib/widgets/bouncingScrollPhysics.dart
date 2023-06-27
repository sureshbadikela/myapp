import 'package:flutter/material.dart';

class bouncingscroll extends StatelessWidget {
  const bouncingscroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BouncingScrollPhysics Example'),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}
