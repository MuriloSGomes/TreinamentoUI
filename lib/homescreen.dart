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
          end: Alignment.topRight,
          stops: [0.1, 0.46],
          colors: [Color(0xFF385ff1), Color(0xFF7414d8)],
        )),
        child: ListView(
          children: <Widget>[
            Container(
              height: 300,
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
            Container(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    heightFactor: 2.4,
                    child: Text(
                      'Hi There!',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                  Align(
                    heightFactor: 0,
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
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email or Username",
                      labelStyle: TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.grey,
                          fontSize: 18),
                      suffixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                        suffixIcon: Icon(Icons.lock_outline)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFf45d27), Color(0xFFf581f)]
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.white,
                          fontSize: 15
                        ),
                      ),
                    ),
                  )
                ],
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
