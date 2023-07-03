import 'package:flutter/material.dart';

class MyNavigationToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Toolbar Example'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(
                kToolbarHeight), // Set preferred size to match AppBar's default height
            child: Container(
              height: kToolbarHeight,
              child: NavigationToolbar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
                middle: Text('Title'),
                trailing: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Handle search button press
                  },
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: Text('Example Content'),
        ),
      ),
    );
  }
}
