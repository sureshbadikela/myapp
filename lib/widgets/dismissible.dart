import 'package:flutter/material.dart';

class dismissable extends StatefulWidget {
  @override
  _dismissableState createState() => _dismissableState();
}

class _dismissableState extends State<dismissable> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dismissible Example')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            //the class that provides the swipe-to-dismiss functionality is called Dismissible. 
            //The Dismissible class allows you to wrap a widget with dismissible behavior.
            return Dismissible(
              key: Key(item),
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(Icons.delete, color: Colors.white),
              ),
              direction: DismissDirection.down,
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$item dismissed')),
                );
              },
              child: ListTile(
                title: Text(item),
              ),
            );
          },
        ),
      ),
    );
  }
}
