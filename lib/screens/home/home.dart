import 'package:flutter/material.dart';
import 'package:meetapp_devfest19/components/avatar.dart';


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Widget _buildLogo() => 
  Container(
    margin: EdgeInsets.only(
      left: 10.0,
    ),
    child: Image.asset(
      'assets/images/logo.png',
      width: 90.0,
      height: 30.0,
    ),
  );

Widget _buildAvatar() => 
  Container(
    margin: EdgeInsets.only(
      right: 10.0,
    ),
    child: Center(
      child: Avatar(
        radius: 16.0,
        imagePath: 'assets/images/avatar.png',
      ),
    ),
  );
 
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: _buildLogo(),
        actions: <Widget>[
          _buildAvatar(),
        ],
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}