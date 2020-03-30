import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  String _mtext = '';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('HR payment system'),
          leading: new Icon(Icons.menu),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() => {_mtext = 'This is forward arrow button'});
                }),
            new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () {
                  setState(() => {_mtext = 'This is close button'});
                })
          ],
          backgroundColor: Colors.cyan,
          toolbarOpacity: 0.5,
          centerTitle: true,
          elevation: 30,
        ),
        body: new Center(
          child: new Text(_mtext),
        ),
      ),
    );
  }
}
