import 'package:flutter/material.dart';


class MemberGroup extends StatelessWidget{
  final String imagePath;
  final String name;
  final String details;

  const MemberGroup({
    Key key,
    @required this.imagePath,
    @required this.name,
    @required this.details,
  }) : assert (imagePath.length > 0),
       assert (name.length > 0),
       assert (details.length > 0),
       super(key : key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          height: MediaQuery.of(context).size.height * 0.1,
          child: Row(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(
                  width: MediaQuery.of(context).size.width*0.17,
                  height: MediaQuery.of(context).size.width*0.17,
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0),
                width: MediaQuery.of(context).size.width*0.7,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        details,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          indent: MediaQuery.of(context).size.width*0.17,
        ),
      ],
    );
  }
}