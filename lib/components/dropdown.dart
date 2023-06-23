import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  var countiresList = ["Select Country", "India", "China", "Srilanka"];
  var selectedItem = "Select Country";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          DropdownButton(
              value: selectedItem,
              items: countiresList.map((item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }).toList(),
              onChanged: (item) {
                print("selected $item");
                setState(() {
                  selectedItem = item!;
                });
              }),
        ],
      ),
    );
  }
}
