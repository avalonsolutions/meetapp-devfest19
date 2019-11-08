import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meetapp_devfest19/screens/explore/explore.dart';
import 'package:meetapp_devfest19/screens/home/home.dart';

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
  ];
  int _screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading ?
          CircularProgressIndicator() :
          _screens.elementAt(_screenIndex)
      ),
    );
  }
}
