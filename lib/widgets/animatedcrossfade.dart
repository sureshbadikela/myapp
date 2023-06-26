import 'package:flutter/material.dart';

//The AnimatedCrossFade widget in Flutter allows you to animate the transition between two child widgets with a cross-fade effect. 
//It smoothly fades out the current child and fades in the new child, providing a visual transition between the two.
class AnimatedCrossFadeExample extends StatefulWidget {
  @override
  _AnimatedCrossFadeExampleState createState() => _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _isFirstWidgetVisible = true;

  void _toggleWidgets() {
    setState(() {
      _isFirstWidgetVisible = !_isFirstWidgetVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 3),
              firstChild: Image.asset('assets/dices.png',width: 200,height: 200,),
              secondChild: Icon(Icons.android, size: 200),
              crossFadeState: _isFirstWidgetVisible
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              layoutBuilder: (Widget topChild, Key topChildKey, Widget bottomChild, Key bottomChildKey) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      key: bottomChildKey,
                      child: bottomChild,
                    ),
                    Positioned(
                      key: topChildKey,
                      child: topChild,
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleWidgets,
              child: Text(_isFirstWidgetVisible ? 'Show Second Widget' : 'Show First Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
