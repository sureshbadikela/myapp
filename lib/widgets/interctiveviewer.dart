// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// class Myinteractiveviewr extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('InteractiveViewer Example'),
//       ),
//       body: Center(
//           child: InteractiveViewer(
//         key: Key('myInteractiveViewer'),
//         clipBehavior: Clip.hardEdge,
//         alignPanAxis: false,
//         panAxis: PanAxis.free,
//         boundaryMargin: EdgeInsets.zero,
//         constrained: true,
//         maxScale: 2.5,
//         minScale: 0.8,
//         interactionEndFrictionCoefficient: 0.15,
//         onInteractionEnd: (ScaleEndDetails details) {
//           // Handle interaction end
//         },
//         onInteractionStart: (ScaleStartDetails details) {
//           // Handle interaction start
//         },
//         onInteractionUpdate: (ScaleUpdateDetails details) {
//           // Handle interaction update
//         },
//         panEnabled: true,
//         scaleEnabled: true,
//         scaleFactor: kDefaultMouseScrollToScaleFactor,
//         transformationController: TransformationController(),
//         alignment: Alignment.center,
//         trackpadScrollCausesScale: false,
//         child: Image.asset(
//           'assets/dices.png',
//         ),
//       )),
//     );
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InteractiveViewer Example'),
      ),
      body: Center(
        child: InteractiveViewer(
          key: Key('myInteractiveViewer'),
          clipBehavior: Clip.hardEdge,
          alignPanAxis: false,
          panAxis: PanAxis.free,
          boundaryMargin: EdgeInsets.zero,
          constrained: true,
          maxScale: 2.5,
          minScale: 0.8,
          interactionEndFrictionCoefficient: 0.15,
          onInteractionEnd: (ScaleEndDetails details) {
            // Handle interaction end
          },
          onInteractionStart: (ScaleStartDetails details) {
            // Handle interaction start
          },
          onInteractionUpdate: (ScaleUpdateDetails details) {
            // Handle interaction update
          },
          panEnabled: true,
          scaleEnabled: true,
          scaleFactor: kDefaultMouseScrollToScaleFactor,
          transformationController: TransformationController(),
          alignment: Alignment.center,
          trackpadScrollCausesScale: false,
          child: Image.asset(
            'assets/dices.png',
          ),
        ),
      ),
    );
  }
}

