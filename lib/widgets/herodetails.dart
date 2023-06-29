import 'package:flutter/material.dart';

class MyHeroTransitionExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hero Transition Example'),
        ),
        body: HeroTransitionExample(),
      ),
    );
  }
}

class HeroTransitionExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),
              );
            },
            child: Hero(
              tag: 'myHero',
              createRectTween: (begin, end) {
                return RectTween(begin: begin, end: end);
              },
              flightShuttleBuilder: (flightContext, animation, flightDirection,
                  fromHeroContext, toHeroContext) {
                return Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40.0,
                );
              },
              placeholderBuilder: (context, heroSize, child) {
                return Container(
                  width: heroSize.width,
                  height: heroSize.height,
                  color: Colors.grey,
                );
              },
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'myHero',
            createRectTween: (begin, end) {
              return RectTween(begin: begin, end: end);
            },
            flightShuttleBuilder: (flightContext, animation, flightDirection,
                fromHeroContext, toHeroContext) {
              return Icon(
                Icons.favorite,
                color: Colors.red,
                size: 80.0,
              );
            },
            placeholderBuilder: (context, heroSize, child) {
              return Container(
                width: heroSize.width,
                height: heroSize.height,
                color: Colors.grey,
              );
            },
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 80.0,
            ),
          ),
        ),
      ),
    );
  }
}
