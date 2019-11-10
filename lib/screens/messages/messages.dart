import 'package:flutter/material.dart';


class MessagesScreen extends StatefulWidget{
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Messages',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(Icons.archive),
          )
        ],
      ),
      body: Center(
        child: Text('Messages'),
      ),
    );
  }
}