import 'package:flutter/material.dart';
class StatelessColumnExampleApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Column(
          children: <Widget>[
            new Text('This is coloumn-1'),
            new Text('This is coloumn-2'),
            new Text('This is coloumn-3'),
          ],
        )
      ),
    );
  }
}

// Row
class StatelessRowExampleApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          body: new Row(
            children: <Widget>[
              new Text('This is Row Widget-1'),
              new Text('This is Row Widget-2'),
              new Text('This is Row Widget-3'),
            ],
          )
      ),
    );
  }
}

// Col/Row mixin
class StatelessColAndRowExampleApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          body: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('This is coloumn-1'),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('This is row widget-1 inside column'),
                  new Text('This is row widget-2 inside column'),
                  new Text('This is row widget-3 inside column')
                ]
              ),
              new Text('This is coloumn-3')
            ],
          )
      ),
    );
  }
}
