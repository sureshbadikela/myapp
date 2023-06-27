import 'package:flutter/material.dart';

class colorFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ColorFiltered Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ColorFiltered Example'),
        ),
        body: Center(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(const Color.fromARGB(255, 207, 179, 177), BlendMode.colorDodge),
            child: Image.asset('assets/dices.png'),
          ),
        ),
      ),
    );
  }
}
