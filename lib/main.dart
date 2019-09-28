import 'package:desafioux/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'screen/room/room_screen.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RoomPage(),
    );
  }
}