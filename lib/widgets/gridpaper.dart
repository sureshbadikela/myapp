import 'package:flutter/material.dart';

// class Mygridpaper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('GridPaper Example'),
//         ),
//         body: Center(
//           child: GridPaper(
//             color: Colors.blue,
//             interval: 100,
//             subdivisions: 4,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.yellow,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Mygridpaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridPaper Example'),
        ),
        body: Center(
          /*The GridPaper widget in Flutter is primarily used as a visual aid for debugging layout and alignment issues in your UI.
           It displays a grid pattern on the screen, allowing you to visually analyze the spacing and positioning of your widgets.
           Suppose you have a Flutter application with a complex layout involving multiple widgets and you want to ensure that everything 
           is properly aligned and spaced.
            You can wrap your main widget or a specific container with GridPaper to overlay a grid pattern on the screen. */
          child: GridPaper(
            color: Colors.blue,
            interval: 50,
            subdivisions: 2,
            child: MyComplexLayoutWidget(),
          ),
        ),
      ),
    );
  }
}

class MyComplexLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Widget 1',
            style: TextStyle(backgroundColor: Colors.red),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
          Text(
            'Widget 2',
            style: TextStyle(backgroundColor: Colors.red),
          ),
        ],
      ),
    );
  }
}
