import 'package:flutter/material.dart';

class TabbarExample extends StatefulWidget {
  @override
  _TabbarExampleState createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Learning Top/Bottom Tab bar'),
          leading: new Icon(Icons.sim_card),
          bottom: new TabBar(
            controller: _tabController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.share)),
              new Tab(icon: new Icon(Icons.wifi_lock)),
            ],
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new Center(child: new Text('This is home tab', textAlign: TextAlign.center),),
            new Center(child: new Text('This is share tab', textAlign: TextAlign.center),),
            new Center(child: new Text('This is wifi-lock tab', textAlign: TextAlign.center),)
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blueAccent,
          child:  new TabBar(
            controller: _tabController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.share)),
              new Tab(icon: new Icon(Icons.wifi_lock)),
            ],
          ),
        )
      ),
    );
  }
}
