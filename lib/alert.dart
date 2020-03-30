import 'package:flutter/material.dart';

//Reason for Extra Class:
// https://github.com/flutter/flutter/issues/26822
// https://github.com/flutter/flutter/issues/18254#issuecomment-395251105

class RunDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: AlertModalExample(),
    );
  }
}


class AlertModalExample extends StatefulWidget {
  @override
  _AlertModalExampleState createState() => _AlertModalExampleState();
}

class _AlertModalExampleState extends State<AlertModalExample> {

  SimpleDialog _simpleDialog;

  void showSimpleDialog() {
    _simpleDialog = new SimpleDialog(
      title: new Text('Simple Dialog'),
      children: <Widget>[
        new SimpleDialogOption(
          onPressed: () {
            print('Yes');
          },
          child: new Text('Yes'),
        ),
        new SimpleDialogOption(
          onPressed: () {
            print('No');
          },
          child: new Text('No'),
        ),
        new SimpleDialogOption(
          onPressed: () {
            print('Close');
            Navigator.pop(context);
          },
          child: new Text('Close'),
        )
      ],
    );

    showDialog(context: context, child: _simpleDialog);
  }

  void showAlertModalDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Alert Dialog"),
              content: Text("Dialog Content"),
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(
            child: new Text('Activate AlertDialog'),
            onPressed: () {
              showAlertModalDialog();
            },
            onLongPress: () {
              showSimpleDialog();
            },
          ),
        ),
      ),
    );
  }
}
