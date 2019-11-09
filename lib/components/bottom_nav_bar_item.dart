import 'package:flutter/material.dart';


class BottomNavBarItem extends StatelessWidget{
  final IconData icon;
  final Function onPressed;
  final int navIndex;
  final String name;
  final int screenIndex;

  const BottomNavBarItem({
    Key key,
    @required this.icon,
    @required this.onPressed,
    @required this.navIndex,
    @required this.name,
    @required this.screenIndex,
  }) : assert (name.length > 0),
       super(key : key);

  @override
  Widget build(BuildContext context){
    return IconButton(
      color: screenIndex == navIndex ? Colors.pinkAccent : Colors.black,
      icon: Icon(icon),
      onPressed: ()=>onPressed(navIndex),
    );
  }
}