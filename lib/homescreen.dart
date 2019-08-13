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
        child: ListView(
          children: <Widget>[
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: ClipPath(
                clipper: HeaderColor(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFCE4EC), Color(0xFFFCE4EC)],
                      begin: Alignment.centerRight,
                      end: Alignment(0, -1),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Image(
                          height: 200,
                          image: AssetImage('lib/assets/flutterlogo.png'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 3,
                        child: Text(
                          'SMARTIE',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF4527A0), Color(0xFF7E57C2)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.3, 1.0],
                )
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                padding: EdgeInsets.all(50),
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        hintText: 'Email or Username',
                      ),
                    ),
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
