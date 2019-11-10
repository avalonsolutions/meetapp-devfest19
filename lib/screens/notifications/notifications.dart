import 'package:flutter/material.dart';


class NotificationsScreen extends StatefulWidget{
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Text('Notifications'),
      ),
    );
  }
}