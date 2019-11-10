import 'package:flutter/material.dart';


class Avatar extends StatelessWidget{
  final String imagePath;
  final double radius;

  const Avatar({
    Key key,
    @required this.imagePath,
    @required this.radius,
  }) : assert (imagePath.length > 0),
       assert (radius > 0),
       super(key : key);

  @override
  Widget build(BuildContext context){
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(imagePath),
    );
  }
}