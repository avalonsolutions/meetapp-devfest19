import 'package:flutter/material.dart';


class NotificationItem extends StatelessWidget{
  final String title;
  final String time;
  final String imageUri;

  const NotificationItem({
    Key key,
    @required this.title,
    @required this.time,
    @required this.imageUri,
  }) : assert (title.length > 0),
       assert (time.length > 0),
       assert (imageUri.length > 0),
       super(key : key);

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: Container(
        width: 40.0,
        child: Image.network(imageUri,),
      ),
      title: Text(title),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Text(time),
      ),
      onTap: (){},
      dense: true,
    );
  }
}