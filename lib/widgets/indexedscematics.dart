import 'package:flutter/material.dart';

/*
The IndexedSemantics class in Flutter is a widget that adds semantics information to its child based on an index.
 It is primarily used when building lists or grids where each item has a unique index and
  you want to provide accessibility information for each item. */

class Myindexedscematics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return IndexedSemantics(
          index: index,
          child: ListTile(
            title: Text('Item $index'),
          ),
        );
      },
    );
  }
}
