import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoFade extends StatefulWidget {
  const LogoFade({super.key});

  @override
  State<LogoFade> createState() => LogoFadeState();
}

class LogoFadeState extends State<LogoFade> {
  double opacityLevel = 1.0;
  double padValue = 0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
    setState(() {
      padValue = padValue == 0 ? 10 : 0;
    });
    print(padValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
        ),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 3),
          curve: Curves.easeInOut,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
        ElevatedButton(
          onPressed: _changeOpacity,
          child: const Text('Fade Logo & apply padding'),
        ),
      ],
    );
  }
}
