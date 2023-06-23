import 'package:flutter/material.dart';



class passdatafromnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyFirstPage(),
        '/second': (context) => MySecondPage(),
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
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/second',
              arguments: MySecondPageArguments(
                title: "Second Screen",
                message: "Hello from Programming",
              ),
            );
          },
          child: Text("Go To Second Screen"),
        ),
      ),
    );
  }
}

class MySecondPageArguments {
  String title;
  String message;

  MySecondPageArguments({required this.title, required this.message});
}

class MySecondPage extends StatelessWidget {
  static String pageRoute = "/second";

  @override
  Widget build(BuildContext context) {
    MySecondPageArguments mySecondPageArguments =
        ModalRoute.of(context)!.settings.arguments as MySecondPageArguments;

    return Scaffold(
      appBar: AppBar(title: Text(mySecondPageArguments.title)),
      body: Container(
        alignment: Alignment.center,
        child: Center(child: Text(mySecondPageArguments.message)),
      ),
    );
  }
}
