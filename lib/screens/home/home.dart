import 'package:flutter/material.dart';
import 'package:meetapp_devfest19/components/avatar.dart';
import 'package:meetapp_devfest19/screens/home/component/group.dart';
import 'package:meetapp_devfest19/screens/home/components/calendar/suggestion.dart';


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
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

  Widget _buildGroupsHeader() =>
    Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Your groups', 
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Text(
              '+ New Group',
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );

  Widget _buildGroups(BuildContext context) =>
    Container(
      height: MediaQuery.of(context).size.height*0.2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Group(
            imagePath: 'https://secure.meetupstatic.com/photos/event/6/d/0/d/600_477387917.jpeg',
            name: 'Mountain View Kubernetes Meetup',
          ),
          Group(
            imagePath: 'https://secure.meetupstatic.com/photos/event/2/6/3/0/600_456669776.jpeg',
            name: 'Silicon Valley New Technology Startups',
          ),
          Group(
            imagePath: 'https://secure.meetupstatic.com/photos/event/d/2/1/600_475623361.jpeg',
            name: 'Multi-Cloud Engineering | SF & Bay',
          ),
          Group(
            imagePath: 'https://secure.meetupstatic.com/photos/event/a/c/1/0/600_468644048.jpeg',
            name: 'Microservices, APIs and Integration - Silicon Valley',
          ),
          Group(
            imagePath: 'https://secure.meetupstatic.com/photos/event/6/2/a/d/600_481405261.jpeg',
            name: 'Silicon Valley Cloud & Ai',
          ),
          Group(
            imagePath: 'https://secure.meetupstatic.com/photos/event/a/4/b/600_460682635.jpeg',
            name: 'Weave User Group - Bay Area',
          ),
        ],
      ),
    );

  Widget _buildGroupsButton(BuildContext context) =>
    Container(
      width: double.infinity,
      child: FlatButton(
        onPressed: (){},
        child: Text(
          'SEE ALL',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );

  Widget _buildCalendarHeader() =>
    Padding(
      padding: EdgeInsets.only(top: 10.0, left: 10.0,),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Your Calendar',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
          ),
        ),
      ),
    );

  Widget _buildCalendarSwitcher() =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Include suggested events'),
        Switch(
          value: true,
          onChanged: (bool val){},
        ),
      ],
    );

  Widget _buildCalendarSuggestions() =>
    ListView(
      children: <Widget>[
        CalendarSuggestion(
          title: 'Silicon Valley New Technology Startups',
          details: 'Business Opportunities & Compliance Requirements with US Government',
          venue: '6:15 PM - Studio Red',
        ),
        CalendarSuggestion(
          title: 'Silicon Valley New Technology Startups',
          details: 'Business Opportunities & Compliance Requirements with US Government',
          venue: '6:15 PM - Studio Red',
        ),
        CalendarSuggestion(
          title: 'Silicon Valley New Technology Startups',
          details: 'Business Opportunities & Compliance Requirements with US Government',
          venue: '6:15 PM - Studio Red',
        ),
        CalendarSuggestion(
          title: 'Silicon Valley New Technology Startups',
          details: 'Business Opportunities & Compliance Requirements with US Government',
          venue: '6:15 PM - Studio Red',
        ),
        CalendarSuggestion(
          title: 'Silicon Valley New Technology Startups',
          details: 'Business Opportunities & Compliance Requirements with US Government',
          venue: '6:15 PM - Studio Red',
        ),
        CalendarSuggestion(
          title: 'Silicon Valley New Technology Startups',
          details: 'Business Opportunities & Compliance Requirements with US Government',
          venue: '6:15 PM - Studio Red',
        ),
        CalendarSuggestion(
          title: 'Silicon Valley New Technology Startups',
          details: 'Business Opportunities & Compliance Requirements with US Government',
          venue: '6:15 PM - Studio Red',
        ),
      ],
    );

  Widget _buildBody(BuildContext context) => 
    Column(
      children: <Widget>[
        _buildGroupsHeader(),
        _buildGroups(context),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Divider(height: 2.0,),
        ),
        _buildGroupsButton(context),
        Divider(height: 2.0,),
        _buildCalendarHeader(),
        _buildCalendarSwitcher(),
        Expanded(
          child: _buildCalendarSuggestions(),
        ),
      ],
    );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: _buildLogo(),
        actions: <Widget>[
          _buildAvatar(),
        ],
      ),
      body: _buildBody(context),
    );
  }
}