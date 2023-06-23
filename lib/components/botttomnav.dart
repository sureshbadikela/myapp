import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentPostiton = 0;

  var list = [
    Center(child: Text("Home")),
    Center(child: Text("Store")),
    Center(child: Text("Camera")),
    Center(child: Text("Wallet")),
    Center(child: Text("History")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar")),
      body: list[_currentPostiton],
      bottomNavigationBar: BottomNavigationBar(
        type: _currentPostiton % 2 == 0
            ? BottomNavigationBarType.fixed
            : BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        currentIndex: _currentPostiton,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
        ],
        onTap: (index) {
          setState(() {
            _currentPostiton = index;
          });
        },
      ),
    );
  }
}
