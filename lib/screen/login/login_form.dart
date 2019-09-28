import 'package:desafioux/bloc/blocs.dart';
import 'package:desafioux/bloc/login/login_bloc.dart';
import 'package:desafioux/model/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desafioux/screen/room/room_screen.dart';

import 'login_register.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _usuarioController = new TextEditingController();
  final _senhaController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var loginBloc = BlocProvider.of<LoginBloc>(context);
    Widget widget;
    if(loginBloc.currentState.isCarregando) {
      widget = CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        strokeWidth: 1,
      );
    }
    else {
      widget = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 110, right: 100),
            child: Text(
              'Login',
              style: TextStyle(
                  fontFamily: 'Comfortaa',
                  color: Colors.white,
                  fontSize: 15),
            ),
          ),
          Align(
            heightFactor: 0,
            widthFactor: 0,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          )
        ],
      );
    }
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Hi There!',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Login to Continue',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _usuarioController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(1),
                labelText: "Email or Username",
                labelStyle: TextStyle(
                  fontFamily: 'Comfortaa',
                  color: Colors.grey,
                  fontSize: 17,
                ),
                suffixIcon: Icon(Icons.person_outline),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _senhaController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(1),
                labelText: "Password",
                labelStyle: TextStyle(
                  fontFamily: 'Comfortaa',
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
                suffixIcon: Icon(Icons.lock_outline),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFFf7769c),
                  Color(0xFFf99587),
                ]),
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: widget,
                onPressed: () => _onLoginButtonPressed(loginBloc)
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onLoginButtonPressed(LoginBloc loginBloc) {
    loginBloc.dispatch(LoginPressedEvent(
      senha: _senhaController.text,
      login: _usuarioController.text,
    ));
  }
}
