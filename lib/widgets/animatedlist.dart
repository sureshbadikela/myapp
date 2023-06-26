import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  @override
  _AnimatedListExampleState createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  late final GlobalKey<AnimatedListState> _listKey;
  late final List<String> _items;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _listKey = GlobalKey<AnimatedListState>();
    _items = [];
  }

  void _addItem() {
    setState(() {
      _items.insert(0, 'Item ${_counter++}');
      _listKey.currentState?.insertItem(0);
    });
  }

  void _removeItem(int index) {
    setState(() {
      final removedItem = _items.removeAt(index);
      _listKey.currentState?.removeItem(
        index,
        (context, animation) => ListTile(
          title: Text(
            removedItem,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        duration: Duration(milliseconds: 500),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedList Example'),
      ),

      //the AnimatedList widget provides a way to animate changes in a list of items. 
      //It's useful when you want to animate the addition, removal, or rearrangement of items in a list.
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ListTile(
              title: Text(
                _items[index],
                style: TextStyle(fontSize: 20.0),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => _removeItem(index),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}


