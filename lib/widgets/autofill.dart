import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Column(
        children: [
          TextField(
            controller: _usernameController,
            autofillHints: [AutofillHints.username],
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextField(
            controller: _passwordController,
            autofillHints: [AutofillHints.password],
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    );
  }
}
