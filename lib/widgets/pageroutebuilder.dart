/*The PageRouteBuilder class in Flutter allows you to create custom page routes with custom transitions, durations, and settings. 
It provides a flexible way to define and customize the behavior of the route transition. */

import 'package:flutter/material.dart';


class MyPageRouteBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Page Route'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Open Page'),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return CustomPage();
                  },
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 500),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Page'),
      ),
      body: Center(
        child: Text('This is a custom page'),
      ),
    );
  }
}
