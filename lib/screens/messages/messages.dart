import 'package:flutter/material.dart';


class MessagesScreen extends StatefulWidget{
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('Messages'),
      ),
    );
  }
}