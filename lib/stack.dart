import 'package:flutter/material.dart';

class Stack extends StatefulWidget {
  @override
  _StackState createState() => _StackState();
}

class _StackState extends State<Stack> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Learning Stack Example:'),
          ),
          body: new Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              ),
              Card(
                color: Colors.green,
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Text('Card Widget Example #1'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              ),
              Card(
                color: Colors.orange,
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Text('Card Widget Example #2'),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class Stack1 extends StatefulWidget {
  @override
  _StackState1 createState() => _StackState1();
}

class _StackState1 extends State<Stack1> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
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
