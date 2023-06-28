import 'package:flutter/material.dart';

class MYFLEX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          buildRowChildren([
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 167, 130, 130),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 201, 107, 107),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 252, 247, 247),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 48, 22, 22),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 206, 17, 17),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 88, 25, 25),
                height: 100,
                width: 500,
              ),
            ),
          ]),
          buildRowChildren([
            Flexible(
              child: Container(
                margin:EdgeInsets.all(2),
                color: Color.fromARGB(255, 70, 15, 15),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 95, 51, 51),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 160, 154, 154),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 36, 22, 22),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 29, 13, 13),
                height: 100,
                width: 500,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(255, 114, 52, 52),
                height: 100,
                width: 500,
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Widget buildRowChildren(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
