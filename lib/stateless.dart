import 'package:flutter/material.dart';
class StatelessApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          child: new Text('This is my Statless Container'),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            color: Color.fromRGBO(10,10,10,0)
          ),
        ),
      ),
    );
  }
}
