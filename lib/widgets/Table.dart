import 'package:flutter/material.dart';


class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Table Example'),
        ),
        body: Center(
          child: Table(
            border: TableBorder.all(), // Add a border around the table
            defaultColumnWidth: IntrinsicColumnWidth(),
            children: const [
              TableRow(
                children: [
                  TableCell(
                    child: Text('Cell 1'),
                  ),
                  TableCell(
                    child: Text('Cell 2'),
                  ),
                  TableCell(
                    child: Text('Cell 3'),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Text('Cell 4'),
                  ),
                  TableCell(
                    child: Text('Cell 5'),
                  ),
                  TableCell(
                    child: Text('Cell 6'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
