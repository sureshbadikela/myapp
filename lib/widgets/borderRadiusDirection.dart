import 'package:flutter/material.dart';

class borderradiusDirectional extends StatelessWidget {
  const borderradiusDirectional({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Border Example'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: Colors.blue,
            ),

            //In general, if your layout does not depend on the text direction, you can use BorderRadius. However, 
            //if your layout requires support for both left-to-right and right-to-left text directions,
            // it is recommended to use BorderRadiusDirectional to handle the radii correctly based on the text direction.
            
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(10.0),
              topEnd: Radius.circular(20.0),
              bottomStart: Radius.circular(5.0),
              bottomEnd: Radius.circular(15.0),
            ),
          ),
          child: Center(
            child: Text(
              'Container with Border and Border Radius',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
