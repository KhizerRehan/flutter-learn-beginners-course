import 'package:flutter/material.dart';

class ListWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: new Text('List Widget')),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('item-1'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('item-1'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('item-1'),
              trailing: new Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
