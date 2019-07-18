import 'package:flutter/material.dart';
import 'package:flutter_app/model/chatmodel.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
     return new ListView.builder(
      itemCount: chatdummy.length,
      itemBuilder: (context,l){
        return new Column(
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                backgroundImage: new NetworkImage(chatdummy[l].avatarUrl),
              ),
              title: new Text(chatdummy[l].name),
            )
          ],
        );
      },   
    );
  }
}