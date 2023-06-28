import 'package:flutter/material.dart';

class FixedExtentPicker extends StatefulWidget {
  @override
  _FixedExtentPickerState createState() => _FixedExtentPickerState();
}

class _FixedExtentPickerState extends State<FixedExtentPicker> {
  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: 0);
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixed Extent Picker'),
      ),
      body: Container(
        color: Colors.amberAccent,
        height: 200,
        child: ListWheelScrollView.useDelegate(
          controller: scrollController,
          physics: FixedExtentScrollPhysics(),
          itemExtent: 50,
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) => Text(items[index]),
            childCount: items.length,
          ),
        ),
      ),
    );
  }
}
