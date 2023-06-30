import 'package:flutter/material.dart';
/*
The MergeSemantics class in Flutter is a widget that merges the semantics of its descendants.
 It is used to combine the semantic information of multiple widgets into a single semantic node,
  ignoring any semantic boundaries between them. */

class MergeSemanticsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MergeSemantics Example'),
      ),
      body: Center(
        child: MergeSemantics(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckboxListTile(
                title: Text('Option 1'),
                value: false,
                onChanged: (value) {},
              ),
              CheckboxListTile(
                title: Text('Option 2'),
                value: false,
                onChanged: (value) {},
              ),
              CheckboxListTile(
                title: Text('Option 3'),
                value: false,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
