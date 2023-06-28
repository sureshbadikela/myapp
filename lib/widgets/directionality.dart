import 'package:flutter/material.dart';



class directionality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Directionality Example'),
          ),
          body: Text('hello')
          
        ),
      ),
    );
  }
}
