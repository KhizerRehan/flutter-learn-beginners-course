import 'package:flutter/material.dart';

class CustomWidgetsExample extends StatefulWidget {
  @override
  _CustomWidgetsExampleState createState() => _CustomWidgetsExampleState();
}

class _CustomWidgetsExampleState extends State<CustomWidgetsExample> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.pink,
      child: new Container(
        color: Colors.blueAccent,
        margin: const EdgeInsets.all(15),
        child: new Container(
          color: Colors.red,
          margin: const EdgeInsets.all(15),
          child: new Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(15),
            child: new Container(
              color: Colors.green,
              margin: const EdgeInsets.all(15),
              child: CustomWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

Widget CustomWidget() {
  return new MaterialApp(
    home: new Center(
        child: new Row(children: <Widget>[
         new Flexible(
           child: new Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               new Text(
                   "Why doesn't this text wrap? There's plenty of vertical space...")
             ],
           ),
         )
        ])
    ),
  );
}

