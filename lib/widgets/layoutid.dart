import 'package:flutter/material.dart';

/*In Flutter, the LayoutId class is used to associate a widget with a specific LayoutBuilder or CustomMultiChildLayout delegate. 
It allows you to control the placement and sizing of a widget within a layout. */

class Mylayoutid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LayoutId Example'),
        ),
        body: CustomMultiChildLayout(
          delegate: MyLayoutDelegate(),
          children: <Widget>[
            LayoutId(
              id: 'left',
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ),
            LayoutId(
              id: 'right',
              child: Container(
                color: Colors.green,
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    final BoxConstraints constraints = BoxConstraints.loose(size);

    if (hasChild('left')) {
      final leftSize = layoutChild('left', constraints);
      positionChild('left', Offset(50, 50));
    }

    if (hasChild('right')) {
      final rightSize = layoutChild('right', constraints);
      positionChild('right', Offset(size.width - rightSize.width - 50, 50));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}
