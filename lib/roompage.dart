import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.blueAccent,
              size: 40,
            ),
            onPressed: () {},
            padding: EdgeInsets.only(right: 12),
          ),
        ],
        title: Text(
          'Rooms',
          style: TextStyle(
            fontFamily: 'Comfortaa-Regular',
            color: Colors.black,
            fontSize: 20
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
