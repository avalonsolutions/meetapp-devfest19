import 'package:flutter/material.dart';
import 'package:meetapp_devfest19/components/avatar.dart';
import 'package:meetapp_devfest19/screens/home/screens/profile/components/member_group.dart';


class ProfileScreen extends StatefulWidget{
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{

  Widget _buildInfo() => 
    Container(
      height: MediaQuery.of(context).size.height*0.2,
      color: Colors.black12,
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width*0.4,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Avatar(
                  radius: MediaQuery.of(context).size.width*0.12,
                  imagePath: 'assets/images/avatar.png',
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.6,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 20.0,),
              child: Container(
                height: MediaQuery.of(context).size.width*0.23,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'V G',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),
                      ), 
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Mountain View'), 
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 13.0,),
                      width: double.infinity,
                      child: FlatButton(
                        color: Colors.white,
                        onPressed: (){},
                        child: Text(
                          'EDIT PROFILE',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

  Widget _buildGroups(){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Member',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                letterSpacing: 1.8,
              ),
            ),
          ),
        ),
        MemberGroup(
          name: 'Silicon Valley New Technology Startups',
          details: '4,372 Members',
          imagePath: 'https://secure.meetupstatic.com/photos/event/2/6/3/0/600_456669776.jpeg',
        ),
        MemberGroup(
            imagePath: 'https://secure.meetupstatic.com/photos/event/a/4/b/600_460682635.jpeg',
            name: 'Weave User Group - Bay Area',
            details: '356 Members',
        ),
        MemberGroup(
            imagePath: 'https://secure.meetupstatic.com/photos/event/6/2/a/d/600_481405261.jpeg',
            name: 'Silicon Valley Cloud & Ai',
            details: '868 Executive Members',
        ),
        MemberGroup(
            imagePath: 'https://secure.meetupstatic.com/photos/event/a/c/1/0/600_468644048.jpeg',
            name: 'Microservices, APIs and Integration - Silicon Valley',
            details: '2,037 Members',
        ),
        MemberGroup(
            imagePath: 'https://secure.meetupstatic.com/photos/event/d/2/1/600_475623361.jpeg',
            name: 'Multi-Cloud Engineering | SF & Bay',
            details: '608 Cloud Engineers',
        ),
        Divider(
          thickness: 5.0,
        ),
      ],
    );
  }

  Widget _buildInterests() =>
    Padding(
      padding: EdgeInsets.symmetric(vertical: 14.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Interests',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 1.8,
          ),
        ),
      ),
    );

  Widget _buildBody() =>
    ListView(
      physics: ClampingScrollPhysics(),
      children: <Widget>[
        _buildInfo(),
        _buildGroups(),
        _buildInterests(),
      ],
    );
  
  @override
  Widget build(BuildContext context){
    return SafeArea(
      top: true,
      bottom: true,
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