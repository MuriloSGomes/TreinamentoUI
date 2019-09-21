import 'package:flutter/material.dart';

class NewRoomPage extends StatefulWidget {
  @override
  _NewRoomPageState createState() => _NewRoomPageState();
}

class _NewRoomPageState extends State<NewRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Add new Room',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Comfortaa',
            fontSize: 20,
          ),
        ),
      ),
      //bottomNavigationBar: ,
    );
  }
}
