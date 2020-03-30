import 'package:flutter/material.dart';

class CounterExample extends StatefulWidget {
  @override
  _CounterExampleState createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.red,
          title: new Text('Learning Stack1 Example:'),
        ),
        body: Center(
          child: Text(
            counter.toString(),
            textScaleFactor: 10,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              this.counter++;
            });
            print(counter);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
