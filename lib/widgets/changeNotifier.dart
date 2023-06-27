// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../main.dart';




// class changeNotifier extends StatelessWidget {
//   const changeNotifier({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final counter = Provider.of<Counter>(context);

//     return MaterialApp(
//       title: 'ChangeNotifier Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ChangeNotifier Example'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Count: ${counter.count}',
//                 style: TextStyle(fontSize: 24),
//               ),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () => counter.increment(),
//                 child: Text('Increment'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
