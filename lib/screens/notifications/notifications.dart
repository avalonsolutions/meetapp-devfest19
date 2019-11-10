import 'package:flutter/material.dart';
import 'package:meetapp_devfest19/screens/notifications/components/notification.dart';

class NotificationsScreen extends StatefulWidget{
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>{
  
  Widget _buildBody() =>
    ListView(
      children: <Widget>[
        NotificationItem(
          title: 'This new group just started: SF Distributed Systems Reading Group',
          time: '16 hours ago',
          imageUri: 'https://www.meetup.com/mu_static/ru-RU/group_fallback_large_4.8ec50b0a.png',
        )
      ],
    );
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: false,
      ),
      body: _buildBody(),
    );
  }
}