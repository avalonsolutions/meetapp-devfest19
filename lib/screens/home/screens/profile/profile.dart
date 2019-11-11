import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget{
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{
  
  Widget _buildBody() =>
    ListView(
      children: <Widget>[
      ],
    );
  
  @override
  Widget build(BuildContext context){
    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){Navigator.of(context).pop();},
            icon: Icon(Icons.close),
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          centerTitle: false,
          actions: <Widget>[
            DropdownButton(
              underline: Container(),
              onChanged: (key){},
              items: [
                DropdownMenuItem(value: UniqueKey(), child: Text('Account settings'),),
                DropdownMenuItem(value: UniqueKey(), child: Text('Manage notifications'),),
                DropdownMenuItem(value: UniqueKey(), child: Text('Payments'),),
                DropdownMenuItem(value: UniqueKey(), child: Text('Help'),),
                DropdownMenuItem(value: UniqueKey(), child: Text('About Meetapp'),),
                DropdownMenuItem(value: UniqueKey(), child: Text('Logout'),),
              ],
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}