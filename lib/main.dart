import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meetapp_devfest19/screens/explore/explore.dart';
import 'package:meetapp_devfest19/screens/home/home.dart';
import 'package:meetapp_devfest19/screens/messages/messages.dart';
import 'package:meetapp_devfest19/screens/notifications/notifications.dart';


void main(){
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meetapp Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ScreenView(),
    );
  }
}

class ScreenView extends StatefulWidget {
  ScreenView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ScreenViewState createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  bool _isLoading = false;
  final List<Widget> _screens = [
    HomeScreen(),
    ExploreScreen(),
    NotificationsScreen(),
    MessagesScreen(),
  ];
  int _screenIndex = 0;

  void _onBottomNavBarItemPressed(int index){
    setState(() {
      _screenIndex = index;
    });
  }

  Widget _buildNavBar() =>
    BottomAppBar( //BottomNavigationBar
      //elevation: ,
      //color: ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 3.0,),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: ()=>_onBottomNavBarItemPressed(0),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: ()=>_onBottomNavBarItemPressed(1),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: ()=>_onBottomNavBarItemPressed(2),
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: ()=>_onBottomNavBarItemPressed(3),
          ),
          SizedBox(width: 7.0,),
        ],
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildNavBar(),
      body: Center(
        child: _isLoading ?
          CircularProgressIndicator() :
          _screens.elementAt(_screenIndex)
      ),
    );
  }
}
