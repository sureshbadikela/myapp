import 'package:app/components/mycomponent.dart';
import 'package:flutter/material.dart';

class design extends StatelessWidget {
  const design({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        right: 0,
        bottom: 0,
        left: 0,
      ),
      // margin: EdgeInsets.all(16.0), // Adjust the margin values as needed
      decoration: BoxDecoration(
        color: Colors.grey[200], // Specify the desired background color
        borderRadius:
            BorderRadius.circular(10.0), // Specify the desired border radius
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(0.1), // Specify the desired shadow color
            blurRadius: 4.0, // Specify the desired blur radius
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    bottom: 4.0), // Adjust the padding values as needed
                child: MyComponent(),
              ),
              ElevatedButton(
                onPressed: () {
                  print('hello');
                },
                child: const Text('Button',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.4)),
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    bottom: 4.0), // Adjust the padding values as needed
                child: MyComponent(),
              ),
              ElevatedButton(
                onPressed: () {
                  print('hello');
                },
                child: const Text('Button',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.4)),
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    bottom: 4.0), // Adjust the padding values as needed
                child: MyComponent(),
              ),
              ElevatedButton(
                onPressed: () {
                  print('hello');
                },
                child: const Text('Button',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.4)),
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    bottom: 4.0), // Adjust the padding values as needed
                child: MyComponent(),
              ),
              ElevatedButton(
                onPressed: () {
                  print('hello');
                },
                child: const Text('Button',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.4)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
