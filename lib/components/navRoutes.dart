import 'package:flutter/material.dart';

class navRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // home
      routes: {
        '/': (context) => MyFirstPage(),
        MySecondPage.pageRoute: (context) => MySecondPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Programming")),
        body: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => MySecondPage() ));
                Navigator.pushNamed(context, MySecondPage.pageRoute);
              },
              child: Text("Go To Second Screen"),
            ),
          ),
        ));
  }
}

class MySecondPage extends StatelessWidget {
  static String pageRoute = "/SecondPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Page")),
        body: Scaffold(
          body: Container(
            child: Center(child: Text("Hello World")),
          ),
        ));
  }
}
