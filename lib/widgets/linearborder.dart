import 'package:flutter/material.dart';

class mylinearborder extends StatelessWidget {
  const  mylinearborder ({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        side: const BorderSide(color: Colors.red),
        shape: const LinearBorder(
          side: BorderSide(color: Colors.blue),
          top: LinearBorderEdge(),
        ),
      ),
      onPressed: () {},
      child: const Text('Red LinearBorder'),
    );
  }
}
