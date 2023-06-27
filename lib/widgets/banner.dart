import 'package:flutter/material.dart';



class banner extends StatelessWidget {
  const banner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banner Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Banner Example'),
        ),
        body: Center(
          //the Banner class is a widget that displays a diagonal text banner at one of the corners of its child widget.
          // It is commonly used to indicate the development or debug status of a widget during app development.
          child: Banner(
            message: 'hello',
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Hello, Banner!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
