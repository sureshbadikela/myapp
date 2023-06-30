import 'package:flutter/material.dart';

// class MyListScrollView extends StatelessWidget {
//   final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListWheelScrollView Example'),
//         ),
//         body: ListWheelScrollView(
//           key: Key('list_wheel_scroll_view'),
//           controller: ScrollController(),
//           physics: ScrollPhysics(),
//           diameterRatio: 2.0,
//           perspective: 0.003,
//           offAxisFraction: -0.4,
//           useMagnifier: true,
//           magnification: 1.2,
//           overAndUnderCenterOpacity: 0.5,
//           itemExtent: 80.0,
//           squeeze: 0.8,
//           onSelectedItemChanged: (index) {
//             print('Selected item: $index');
//           },
//           renderChildrenOutsideViewport: true,
//           clipBehavior: Clip.antiAlias,
//           restorationId: 'list_wheel_scroll_view',
//           scrollBehavior: ScrollBehavior(),
//           children: items.map((item) => ListTile(title: Text(item))).toList(),
//         ),
//       ),
//     );
//   }
// }

/*ListWheelScrollView is simpler and suitable for cases where you have a fixed number of items that can be provided directly as children. */

// class MyListScrollView extends StatelessWidget {
//   final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListWheelScrollView Example'),
//         ),
//         body: ListWheelScrollView(
//           controller: ScrollController(),// controlling the scroll position.
//           physics: ScrollPhysics(),// define the scrolling behavior.
//           itemExtent: 80.0,
//           diameterRatio: 2.0,
//           perspective: 0.003,
//           offAxisFraction: -0.4,
//           useMagnifier: true,
//           magnification: 1.2,
//           overAndUnderCenterOpacity: 0.5,
//           // squeeze: 0.8,
//           onSelectedItemChanged: (index) {
//             print('Selected item: $index');
//           },
//           children: items.map((item) => ListTile(title: Text(item))).toList(),
//         ),
//       ),
//     );
//   }
// }

/*ListWheelScrollView.useDelegate allows you to dynamically generate and manage the list of children using delegate classes */

class MyListScrollView extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListWheelScrollView.useDelegate Example'),
        ),
        body: ListWheelScrollView.useDelegate(
          itemExtent: 80.0,
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
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

