import 'package:flutter/material.dart';


class MyPageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        onGenerateRoute: (RouteSettings settings) {
          if (settings.name == '/') {
            return MaterialPageRoute(
              builder: (context) => HomePage(),
              settings: settings,
            );
          } else if (settings.name == '/details') {
            final PageArguments args = settings.arguments as PageArguments;
            return MaterialPageRoute(
              builder: (context) => DetailsPage(args.data),
              settings: settings,
            );
          }
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Details'),
          onPressed: () {
            final args = PageArguments('Details Page');
            Navigator.pushNamed(context, '/details', arguments: args);
          },
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String data;

  DetailsPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}

class PageArguments {
  final String data;

  PageArguments(this.data);
}
