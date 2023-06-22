// import 'package:app/components/design.dart';
import 'package:app/components/form.dart';
import 'package:app/components/mycomponent.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {
            // Add your functionality here
          },
        ),
        title: Text('My First Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.blue,
        surfaceTintColor: Colors.amber.shade600,
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(10.0),
        //   ),
        foregroundColor: const Color.fromARGB(255, 183, 87, 58),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body:  some(),
      floatingActionButton: const FloatingActionButton(
          onPressed: null, tooltip: 'hello', child: Text('click')),
    );
  }
}
