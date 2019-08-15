import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: ClipPath(
                clipper: HeaderColor(),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Image(
                          height: 170,
                          image: AssetImage('lib/assets/flutterlogo.png'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1.5,
                        child: Text(
                          'smartie',
                          style: TextStyle(
                              letterSpacing: 5,
                              fontFamily: 'Comfortaa',
                              color: Colors.grey,
                              fontSize: 43),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Hi There!',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                    Align(
                      heightFactor: 2,
                      child: Text(
                        'Login to Continue',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1),
                        labelText: "Email or Username",
                        labelStyle: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.grey,
                            fontSize: 17),
                        suffixIcon: Icon(Icons.person_outline),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
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
                          suffixIcon: Icon(Icons.lock_outline)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFf7769c), Color(0xFFf99587)]),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                            heightFactor: 0,
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    color: Colors.white,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                          Align(
                            heightFactor: 0,
                            alignment: Alignment(0.9, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              heightFactor: 0,
              alignment: Alignment(-0.7, 0.1),
              child: Text(
                'Register',
                style: TextStyle(
                    fontFamily: 'Comfortaa', color: Colors.grey, fontSize: 16),
              ),
            ),
            Align(
              heightFactor: 0.1,
              alignment: Alignment(0.7, 0.1),
              child: Text(
                'Forgot?',
                style: TextStyle(
                    fontFamily: 'Comfortaa', color: Colors.grey, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderColor extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
