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
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      child: InkWell(
        onTap: ()=>onPressed(navIndex),
        splashColor: Colors.pinkAccent,
        highlightColor: Colors.transparent,
        enableFeedback: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: screenIndex == navIndex ? Colors.pinkAccent : Colors.black54,
            ),
            Text(
              name,
              style: TextStyle(
                color: screenIndex == navIndex ? Colors.pinkAccent : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}