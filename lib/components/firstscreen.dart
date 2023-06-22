import 'package:app/components/secondscreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            // navigation form one component to other component without path, with aid of component pass to builder method
              context, MaterialPageRoute(builder: (context) => const SecondScreen())); 
        },
        child: const Text('Button',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 1.4)),
      ),
      const Text('first screen')
    ]);
  }
}
