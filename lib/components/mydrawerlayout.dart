import 'package:flutter/material.dart';

class MyDrawerLayout extends StatefulWidget {
  @override
  _MyDrawerLayoutState createState() => _MyDrawerLayoutState();
}

class _MyDrawerLayoutState extends State<MyDrawerLayout> {


  var list = [
    Center(child: Text("Home"),),
    Center(child: Text("Sign In"),),
    Center(child: Text("Sign Out"),),
  ];

  var currentItemSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Drawer Layout"),
      ),
      body: list[currentItemSelected],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child:  Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  "Programming",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  currentItemSelected = 0;
                });
              },
            ),
            ListTile(
              title: const Text("Sign In"),
              leading: const Icon(Icons.access_time),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  currentItemSelected = 1;
                });
              },
            ),
            ListTile(
              title: const Text("Sign Out"),
              leading: const Icon(Icons.local_activity),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  currentItemSelected = 2;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}