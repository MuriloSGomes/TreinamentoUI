import 'package:flutter/material.dart';
import 'package:dashed_container/dashed_container.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(95.0),
        child: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          title: Align(
            alignment: Alignment(0.0, 0.7),
            child: Text(
              'Rooms',
              style: TextStyle(
                fontFamily: 'Comfortaa-Regular',
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            Align(
              alignment: Alignment(0, 1),
              child: IconButton(
                icon: Icon(Icons.add_circle_outline,
                    color: Colors.blueAccent, size: 40),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DashedContainer(
                child: Container(
                  height: 200.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/cozinha.jpg'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget EscpacoEntreBox() {
    return SizedBox(height: 40.0);
  }
}
