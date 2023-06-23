// import 'package:app/components/home.dart';
// import 'package:app/components/myappbar.dart';
import 'package:app/components/botttomnav.dart';
import 'package:app/components/checkboxelement.dart';
import 'package:app/components/dropdown.dart';
import 'package:app/components/mycomponent.dart';
import 'package:app/components/mydrawerlayout.dart';
import 'package:app/components/radio.dart';
import 'package:app/components/switchElement.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const  SwitchElement());
  }
}
