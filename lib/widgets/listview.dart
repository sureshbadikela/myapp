import 'package:flutter/material.dart';

/*
The ListView class in Flutter is a widget that displays a scrollable list of children widgets. 
It's commonly used when you have a large number of items that may not fit within the available screen space. */

class MyListView extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5','Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5','Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Example'),
        ),
        body: ListView(
          children: items.map((item) => ListTile(title: Text(item))).toList(),
        ),
      ),
    );
  }
}


/*The ListView.builder constructor is used in Flutter when you have a large number of items or when the items
 are dynamically generated based on an index. It is more efficient than using ListView with a fixed list of 
 children because ListView.builder only builds the widgets that are visible on the screen. */


class MyListBuilder extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5','Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5','Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder Example'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}

/* The ListView.separated constructor in Flutter is used when you have a list of items and 
want to display separators between the items. It's similar to ListView.builder, 
but it allows you to define separators that visually separate the items in the list.*/

class MyListSaperator extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.separated Example'),
        ),
        body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}

/*
The ListView.custom constructor in Flutter is used when you need complete control over the layout and rendering of the list items.
 It allows you to provide a custom delegate that specifies how the items should be built and laid out. */

class MyListCustom extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.custom Example'),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
            childCount: items.length,
          ),
        ),
      ),
    );
  }
}

