// import 'package:app/components/home.dart';
// import 'package:app/components/myappbar.dart';
import 'package:app/components/appactionmenu.dart';
import 'package:app/components/botttomnav.dart';
import 'package:app/components/checkboxelement.dart';
import 'package:app/components/datepick.dart';
import 'package:app/components/dropdown.dart';
import 'package:app/components/firstLayout.dart';
import 'package:app/components/homepage.dart';
import 'package:app/components/mycomponent.dart';
import 'package:app/components/mydrawerlayout.dart';
import 'package:app/components/radio.dart';
import 'package:app/components/sharedprefernce.dart';
import 'package:app/components/switchElement.dart';
import 'package:app/widgets/absorverpoint.dart';
import 'package:app/widgets/accumulator.dart';
import 'package:app/widgets/actionsfile.dart';
import 'package:app/widgets/align.dart';
import 'package:app/widgets/alignmenttransition.dart';
import 'package:app/widgets/animateBuilder.dart';
import 'package:app/widgets/animatedModalBarier.dart';
import 'package:app/widgets/animatedOPacity.dart';
import 'package:app/widgets/animatedPosition.dart';
import 'package:app/widgets/animatedalign.dart';
import 'package:app/widgets/animatedcontainer.dart';
import 'package:app/widgets/animatedcrossfade.dart';
import 'package:app/widgets/animateddefaulttextstyle.dart';
import 'package:app/widgets/animatedfractionallysizexbox.dart';
import 'package:app/widgets/animatedgrid.dart';
import 'package:app/widgets/animatedlist.dart';
import 'package:app/widgets/animatedphysicalmode.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:AnimatedPositionedExample());
  }
}




