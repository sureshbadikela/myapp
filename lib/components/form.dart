import 'package:flutter/material.dart';

class some extends StatelessWidget {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 4.0), // Adjust the padding values as needed
              child: TextField(
                controller: editingController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email', // Add the label text
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(),
                  // suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(editingController.text);
              },
              child: const Text('Get Data'),
            ),
          ],
        ));
  }
}
