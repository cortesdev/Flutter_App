import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Tabbar/chat.dart';

void main() {
  runApp(new MaterialApp(
    home: HomeScreen(),
     theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0Xff25D366),
      ),
    ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: new Text("Whatsapp"),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            new IconButton(
              icon: Icon(Icons.more_horiz),
            onPressed: (){},          
            ),
          ],
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.camera),
              ),
              new Tab(
                 text: 'Chat',
              ),
              new Tab(
                 text: 'Status',
              ),
              new Tab(
                 text: 'call',
              )
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(child: new Center(child: new Text("Camera"),),),
              Chat(),
                new Container(child: new Center(child: new Text("Status"),),),
                  new Container(child: new Center(child: new Text("alls"),),),
          ],
        ),
      ), 
    );
  }
}
