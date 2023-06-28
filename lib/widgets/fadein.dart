import 'package:flutter/material.dart';

class FadeInImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FadeInImage Example'),
        ),
        body: Center(
          child: FadeInImage(
            placeholder: NetworkImage(
                'https://blog.hubspot.com/hs-fs/hubfs/7a8f8d634013568124e130728834d47a.gif?width=1500&name=7a8f8d634013568124e130728834d47a.gif'),
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjKpeC2wANAsrTywaZhT3_JqIn6PsmAj7G79Owt0XZ&s'),
            fadeInDuration: Duration(milliseconds: 2000),
            fadeInCurve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(FadeInImageExample());
}
