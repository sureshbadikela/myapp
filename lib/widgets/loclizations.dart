import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


/*In Flutter, the Localizations class is a utility class that provides access to
 localized resources within an application. It acts as a central hub for managing 
 and retrieving localized strings, images, fonts, and other resources based on the current locale. */

// Define a custom LocalizationsDelegate
class MyLocalizationsDelegate extends LocalizationsDelegate<MyLocalizations> {
  const MyLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'fr'].contains(locale.languageCode);
  }

  @override
  Future<MyLocalizations> load(Locale locale) {
    return SynchronousFuture<MyLocalizations>(
      MyLocalizations(locale),
    );
  }

  @override
  bool shouldReload(MyLocalizationsDelegate old) => false;
}

// Define the localizations class
class MyLocalizations {
  final Locale locale;

  MyLocalizations(this.locale);

  static MyLocalizations of(BuildContext context) {
    return Localizations.of<MyLocalizations>(context, MyLocalizations)!;
  }

  String get hello {
    if (locale.languageCode == 'fr') {
      return 'Bonjour';
    } else {
      return 'Hello';
    }
  }
}

class MyAppExample extends StatelessWidget {
  const MyAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        const MyLocalizationsDelegate(),
        // Add other delegates here
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('fr'),
        // Add other supported locales here
      ],
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = MyLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.hello),
      ),
      body: Center(
        child: Text(localizations.hello),
      ),
    );
  }
}
