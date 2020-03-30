import 'package:flutter/material.dart';

class Routing extends StatelessWidget {
  final String routingText;
  Routing(this.routingText);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Paging Route Example'),
          backgroundColor: Colors.green,
        ),
        body: new Center(
          child: new Text(this.routingText),
        ),
      ),
    );
  }
}
