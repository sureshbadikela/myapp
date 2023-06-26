import 'package:flutter/material.dart';

class acumulator extends StatefulWidget {
  @override
  _acumulatorState createState() => _acumulatorState();
}

class _acumulatorState extends State<acumulator> {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  int accumulator = 0;

  @override
  void initState() {
    //is used to invoke the base class implementation of the initState() method,
    // ensuring that the state is correctly initialized before proceeding with any custom initialization code in the subclass.
    super.initState();

    calculateSum();
  }

  void calculateSum() {
    numbers.forEach((number) {
      accumulator += number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accumulator Example'),
      ),
      body: Center(
        child: Text('Sum: $accumulator'),
      ),
    );
  }
}
