import 'package:flutter/material.dart';

// class Mygridview extends StatelessWidget {
//   final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('GridView Example'),
//         ),
//         body: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4,
//             mainAxisSpacing: 8.0,
//             crossAxisSpacing: 8.0,
//             childAspectRatio: 14/8,
//           ),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return Container(
//               color: Colors.blue,
//               child: Center(
//                 child: Text(
//                   items[index],
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20.0,
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

//

//

class Mygridview extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView.extent Example'),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          children: List.generate(items.length, (index) {
            return Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
