import 'package:flutter/material.dart';


class Group extends StatelessWidget{
  final String imagePath;
  final String name;

  const Group({
    Key key,
    @required this.imagePath,
    @required this.name,
  }) : assert (imagePath.length > 0),
       assert (name.length > 0),
       super(key : key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
        left: 3.0,
        right: 3.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width*0.3,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imagePath),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 5.0, 
            right: 5.0,
            bottom: 5.0,
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}