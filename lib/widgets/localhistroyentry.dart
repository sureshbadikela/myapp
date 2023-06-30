import 'package:flutter/material.dart';

/*The purpose of LocalHistoryEntry is to provide a way to save and 
restore a specific application state within a Navigator without using a named route or a separate route configuration. */

class MyLocalhistoryEntry extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Local History Example'),
        ),
        body: Navigator(
          key: navigatorKey,
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              settings: settings,
              builder: (context) {
                return MyHomePage(
                  onPop: () {
                    navigatorKey.currentState?.pop();
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final VoidCallback? onPop;

  MyHomePage({this.onPop});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Open Details'),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MyDetailsPage(
                onPop: onPop,
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyDetailsPage extends StatelessWidget {
  final VoidCallback? onPop;

  MyDetailsPage({this.onPop});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (onPop != null) {
          onPop!();
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Details Page'),
        ),
        body: Center(
          child: Text('Details'),
        ),
      ),
    );
  }
}
