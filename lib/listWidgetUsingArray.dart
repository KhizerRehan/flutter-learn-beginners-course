import 'package:flutter/material.dart';

class ListWidgetExample extends StatefulWidget {
  @override
  _ListWidgetExampleState createState() => _ListWidgetExampleState();
}

class _ListWidgetExampleState extends State<ListWidgetExample> {

  List<int> items = new List();

  @override
  void initState(){
    for(int i=0; i<50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: new Text('HR payment system')),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(
              title: new Text('Index No: $index'),
              trailing: new Icon(Icons.arrow_forward)
            );
          }),
      ),
    );
  }
}
