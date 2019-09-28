import 'dart:math';

import 'package:desafioux/screen/room/room_screen.dart';
import 'package:desafioux/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginRegister extends StatefulWidget {
  @override
  _LoginRegisterState createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  TextEditingController email = new TextEditingController();
  TextEditingController senha = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  color: Colors.grey,
                  constraints: BoxConstraints(
                      maxHeight: 450.0,
                      maxWidth: 350.0,
                      minWidth: 150.0,
                      minHeight: 150.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: "email"),
                        controller: email,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "senha"),
                        controller: senha,
                      ),
                      RaisedButton(
                        color: Colors.cyan,
                        onPressed: () async {
                          var result = await LoginService().registreLogin(
                            email: email.text,
                            senha: senha.text,
                          );
                          if (result) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RoomPage()),
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
