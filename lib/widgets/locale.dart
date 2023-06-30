import 'package:flutter/material.dart';

/*
In Flutter, the Locale class represents a specific geographical or cultural region.
 It is used to define the language and formatting conventions for internationalization and localization in an application.
 The Locale class provides information such as the language code and the country code for a particular locale. */

class MyLocale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // Add your localization delegates here
      ],
      supportedLocales: [
        Locale('en'),
        Locale('fr', 'FR'),
      ],
      locale: Locale('en'), // Set the initial locale
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locale Example'),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
