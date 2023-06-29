import 'package:flutter/material.dart';

class MyImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Example'),
      ),
      body: const Center(
        child: Image(
          // image: AssetImage('assets/dices.png'),
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          width: 400,
          height: 400,
        ),
      ),
    );
  }
}
