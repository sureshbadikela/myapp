import 'package:flutter/material.dart';

class baselineExample extends StatelessWidget {
  const baselineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baseline Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Baseline Example'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //The Baseline class in Flutter is a widget that aligns its child widget to a specific baseline. 
              //It is useful when you want to align text or other widgets based on their textual baselines.
              const Baseline(
                baseline: 80.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Baseline(
                baseline: 80.0,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.red,
                ),
              ),
              const Baseline(
                baseline: 100.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'World',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
