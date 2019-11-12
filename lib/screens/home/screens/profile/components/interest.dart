import 'package:flutter/material.dart';


class Interest extends StatelessWidget{
  final String name;

  const Interest({
    Key key,
    @required this.name,
  }) : assert (name.length > 0),
       super(key : key);

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.pinkAccent,
            wordSpacing: 7.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}