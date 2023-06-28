// import 'package:app/components/design.dart';
// import 'package:app/components/_container.dart';
// import 'package:app/components/form.dart';
import 'package:app/components/alert.dart';
import 'package:app/components/firstscreen.dart';
import 'package:app/components/mycomponent.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {
            // Add your functionality here
          },
        ),
        title:
            const Text('My First Page', style: TextStyle(color: Colors.white)),
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

      body: const FirstScreen(),

      floatingActionButton: FloatingActionButton(
          tooltip: 'hello',
          onPressed: () {
            var snackbar = SnackBar(
              //snack bar apply
              showCloseIcon:true,
              closeIconColor:Colors.white,
              duration: const Duration(seconds: 2),
              content: const Text('clicked this button'),
              backgroundColor: Colors.green,
              action: SnackBarAction(
                textColor: Colors.white,
                label: 'undo',
                onPressed: () {
                  print('undo action');
                },
              ),
            );
            ScaffoldMessenger.of(context)
                .showSnackBar(snackbar); //snackbar message show method
          },
          child: const Text('click')),
    );
  }
}
