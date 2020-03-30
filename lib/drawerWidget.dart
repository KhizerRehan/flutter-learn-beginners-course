import 'package:flutter/material.dart';
import 'package:flutterapp/route.dart';

// REASON FOR THIS EXTRA CLASS: OPEN THIS LINK:
//https://github.com/flutter/flutter/issues/15919#issuecomment-383810916

class DrawerRouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DrawerWidget(),
    );
  }
}

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.red,
          title: new Text('Drawer Example'),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text('Haider Butt'),
                accountEmail: new Text('HaiderAftabButt@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.orange,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/7c/c7/a6/7cc7a630624d20f7797cb4c8e93c09c1--flat-icons-free-icon.jpg'),
                ),
                decoration: new BoxDecoration(color: Colors.red),
              ),
              new ListTile(
                title: new Text('Page-1'),
                leading: new Icon(Icons.add),
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Routing('page2'))),
              ),
              new ListTile(
                title: new Text('Page-2'),
                leading: new Icon(Icons.print),
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Routing('page2'))),
              ),
              new ListTile(
                title: new Text('Page-3'),
                leading: new Icon(Icons.share),
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Routing('page2'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
