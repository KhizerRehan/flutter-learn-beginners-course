import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridView extends StatefulWidget {
  GridView.builder({int itemCount, gridDelegate, itemBuilder});

  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridView> {
  List<int> items = new List();

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(title: new Text('Gridview Example')),
          body: new GridView.builder(
              itemCount: items.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  color: Colors.pink,
                  child: new Padding(padding: const EdgeInsets.all(20.0)),
                );
              })
      ),
    );
  }
}
