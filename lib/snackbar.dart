import 'package:flutter/material.dart';

class SnackbarExample extends StatefulWidget {
  @override
  _SnackbarExampleState createState() => _SnackbarExampleState();
}

class _SnackbarExampleState extends State<SnackbarExample> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  activateSnackBarNotification() {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
        content: new Text('Snackbar Activated'),
        backgroundColor: Colors.purple));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        key: _scaffoldKey,
        body: new Center(
          child: new RaisedButton(
            child: new Text('Long Press for Toast notification'),
            onLongPress: () {
              activateSnackBarNotification();
            },
          ),
        ),
      ),
    );
  }
}
