import 'package:flutter/material.dart';

class beveleRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeveledRectangleBorder Example'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            // border: Border.all(
            //   width: 2.0,
            //   color: Colors.blue,
            // ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            shape: BoxShape.rectangle,
          ),
          child: Material(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              side: BorderSide(
                width: 2.0,
                color: Colors.blue,
              ),
            ),
            child: InkWell(
              onTap: () {
                print('Button tapped!');
              },
              child: Center(
                child: Text(
                  'Button',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
