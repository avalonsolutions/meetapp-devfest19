import 'package:flutter/material.dart';


class MessagesScreen extends StatefulWidget{
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

Widget _buildBody() =>
  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/images/messages.png'),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'No messages at the moment',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Text(
            'Start conversations with people you meet and keep track of them here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    ),
  );

class _MessagesScreenState extends State<MessagesScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(Icons.archive),
          )
        ],
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}