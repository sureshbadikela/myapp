import 'package:flutter/material.dart';

class MyGlowingscrollview extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GlowingOverscrollIndicator Example'),
        ),

        /*The GlowingOverscrollIndicator class in Flutter is a visual effect that is applied when the user
         overscrolls a scrollable widget beyond its boundaries. 
        It adds a glowing effect to indicate the overscroll, providing visual feedback to the user. */
        body: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: Colors.orange,
          child: Container(
            height: 200, // Fixed height to simulate limited space
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          ),
        ),
      ),
    );
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GlowingOverscrollIndicator Example'),
        ),
        body: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: Colors.orange,
          
          child: ListView.builder(
            controller: _scrollController,
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
