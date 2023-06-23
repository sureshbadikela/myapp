import 'package:flutter/material.dart';


class SwitchElement extends StatefulWidget {
  const SwitchElement({super.key});

  @override
  _SwitchElementState createState() => _SwitchElementState();
}

class _SwitchElementState extends State<SwitchElement> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Switch(
                value: status,
                onChanged: (val) {
                  print("switch status $val");
                  setState(() {
                    status = val;
                  });
                }),
            SwitchListTile(
              controlAffinity:ListTileControlAffinity.leading,
                value: status,
                title: Text("Switch"),
                subtitle: Text("Status $status"),
                onChanged: (val) {
                  print("switch status $val");
                  setState(() {
                    status = val;
                  });
                })
          ],
        ),
      ),
    );
  }
}