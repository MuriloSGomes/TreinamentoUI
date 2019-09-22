import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topCenter,
            stops: [0, 0.5],
            colors: [Color(0xFF385ff1), Color(0xFF7414d8)],
          ),
        ),
        child: ListView(
          children: <Widget>[
            LoginLogo(),
            LoginForm(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Register',
                    style: TextStyle(
                        fontFamily: 'Comfortaa', color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    'Forgot?',
                    style: TextStyle(
                        fontFamily: 'Comfortaa', color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
