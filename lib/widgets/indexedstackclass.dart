import 'package:flutter/material.dart';

/*The IndexedStack class in Flutter is a widget that displays a single child from a list of children based on a specified index.
It is useful when you want to show only one child at a time, such as in tabbed interfaces or slideshow components. */

// class Myindexedstack extends StatefulWidget {
//   @override
//   _MyindexedstackState createState() => _MyindexedstackState();
// }

// class _MyindexedstackState extends State<Myindexedstack> {
//   int currentIndex = 0;

//   void changeIndex(int newIndex) {
//     setState(() {
//       currentIndex = newIndex;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'IndexedStack Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('IndexedStack Example'),
//         ),
//         body: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => changeIndex(0),
//                   child: Text('Child 1'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => changeIndex(1),
//                   child: Text('Child 2'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => changeIndex(2),
//                   child: Text('Child 3'),
//                 ),
//               ],
//             ),
//             IndexedStack(
//               index: currentIndex,
//               children: [
//                 Container(
//                   color: Colors.red,
//                   width: 200,
//                   height: 200,
//                 ),
//                 Container(
//                   color: Colors.blue,
//                   width: 200,
//                   height: 200,
//                 ),
//                 Container(
//                   color: Colors.green,
//                   width: 200,
//                   height: 200,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class Myindexedstack extends StatefulWidget {
  @override
  _MyindexedstackState createState() => _MyindexedstackState();
}

class _MyindexedstackState extends State<Myindexedstack> {
  int currentIndex = 0;

  void changeIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IndexedStack Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('IndexedStack Example'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => changeIndex(0),
                  child: Text('Child 1'),
                ),
                ElevatedButton(
                  onPressed: () => changeIndex(1),
                  child: Text('Child 2'),
                ),
                ElevatedButton(
                  onPressed: () => changeIndex(2),
                  child: Text('Child 3'),
                ),
              ],
            ),
            IndexedStack(
              index: currentIndex,
              alignment: AlignmentDirectional.bottomEnd,
              textDirection: TextDirection.ltr,
              clipBehavior: Clip.hardEdge,
              sizing: StackFit.loose,
              children: [
                Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                ),
                Container(
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                ),
                Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

