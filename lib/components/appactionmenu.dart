import 'package:flutter/material.dart';

class AppActionMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Programming"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: () {}),
            IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
            PopupMenuButton(
                onSelected: (item) {
                  print("$item");
                  if (item == "Settings") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MySecondPage()));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppActionMenu()));
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      const PopupMenuItem(
                        value: "Settings",
                        child: Text("Settings"),
                      ),
                      const PopupMenuItem(
                        value: "Logout",
                        child: Text("Logout"),
                      ),
                    ])
          ],
        ),
        body: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MySecondPage()));
              },
              child: const Text("Go To Second Screen"),
            ),
          ),
        ));
  }
}

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Second Page")),
        body: const Scaffold(
          body: Center(child: Text("Hello from second page")),
        ));
  }
}
