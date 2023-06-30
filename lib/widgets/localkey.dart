import 'package:flutter/material.dart';


/*By using different LocalKey subclasses, we can identify and differentiate between the widgets in the column. 
The ValueKey and ObjectKey allow us to explicitly
 provide values for identification, while the GlobalKey allows us to reference a specific instance of a widget. */

// class MyLocalkey extends StatelessWidget {
//   final GlobalKey<MyStatefulWidgetState> widgetKey =
//       GlobalKey<MyStatefulWidgetState>();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('LocalKey Example'),
//         ),
//         body: Column(
//           children: [
//             MyStatefulWidget(
//               key: ValueKey('value_key'),
//             ),
//             MyStatefulWidget(
//               key: ObjectKey('object_key'),
//             ),
//             MyStatefulWidget(
//               key: widgetKey,
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             final state = widgetKey.currentState;
//             if (state != null) {
//               state.incrementCounter();
//             }
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   MyStatefulWidgetState createState() => MyStatefulWidgetState();
// }

// class MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int counter = 0;

//   void incrementCounter() {
//     setState(() {
//       counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       child: Text('Counter: $counter'),
//     );
//   }
// }


class MyLocalkey extends StatelessWidget {
  final List<int> counters = [0, 0, 0];
  final GlobalKey<MyStatefulWidgetState> widgetKey = GlobalKey<MyStatefulWidgetState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LocalKey Example'),
        ),
        body: Column(
          children: [
            MyStatefulWidget(
              key: ValueKey<int>(0),
              counter: counters[0],
              onIncrement: () => incrementCounter(0),
            ),
            MyStatefulWidget(
              key: ValueKey<int>(1),
              counter: counters[1],
              onIncrement: () => incrementCounter(1),
            ),
            MyStatefulWidget(
              key: widgetKey,
              counter: counters[2],
              onIncrement: () => incrementCounter(2),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            incrementCounter(2);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void incrementCounter(int index) {
    counters[index]++;
    if (index == 2) {
      widgetKey.currentState?.incrementCounter();
    }
  }
}

class MyStatefulWidget extends StatefulWidget {
  final int counter;
  final VoidCallback onIncrement;

  const MyStatefulWidget({
    Key? key,
    required this.counter,
    required this.onIncrement,
  }) : super(key: key);

  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    counter = widget.counter;
  }

  @override
  void didUpdateWidget(covariant MyStatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.counter != counter) {
      counter = widget.counter;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Counter: $counter'),
          ElevatedButton(
            onPressed: widget.onIncrement,
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}
