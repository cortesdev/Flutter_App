import 'package:flutter/material.dart';
 
class WhatsAppHome extends StatelessWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
 with SingleTickerProviderStateMixin {  
  TabController _tabControler;

  @override 
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(      
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CALLS"),
            new Tab(text: "STATUS"),
            new Tab(text: "Calls"),
        ],
      ),
    ), 
  body: new TabBarView(
    controller: _tabControler,
    children: <Widget>[],
    ),
  );
 }
}