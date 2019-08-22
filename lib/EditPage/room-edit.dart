import 'package:desafioux/entities/room.dart';
import 'package:flutter/material.dart';

class RoomEdit extends StatelessWidget {
  final RoomModel room;

  const RoomEdit({Key key, this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170.0),
        child: Stack(
          children: <Widget>[
            Image(
              fit: BoxFit.cover,
              width: 500,
              image: AssetImage(room.image),
            ),
            Container(
              height: 300,
              alignment: Alignment(1, 1),
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '25°',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '75/kWh',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 10,
              title: Text(room.nomeImage),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-0.9, -0.9),
            child: Container(
              alignment: Alignment(0, 0.6),
              child: Switch(
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.orange,
                value: true,
              ),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, -2.2),
                  image: AssetImage('lib/assets/ar.png'),
                ),
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.56, -0.57),
            child: Text(
              'A/C',
              style:
                  TextStyle(fontFamily: 'Comfortaa', color: Colors.blueAccent),
            ),
          ),
          Align(
            alignment: Alignment(0.9, -0.9),
            child: Container(
              alignment: Alignment(0, 0.65),
              child: Switch(
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.orange,
                value: true,
              ),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0,-1),
                  image: AssetImage('lib/assets/lampada.png')
                ),
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.93, -0.34),
            child: SizedBox(
              height: 35,
              child: Image(
                image: AssetImage('lib/assets/ice.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.75, -0.32),
            child: Text(
              '25°',
              style: TextStyle(fontFamily: 'Comfortaa', color: Colors.grey, fontSize: 15),
            ),
          ),
          Align(
            alignment: Alignment(-0.23, -0.34),
            child: SizedBox(
              height: 25,
              child: Image(
                image: AssetImage('lib/assets/settings.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0.5),
            child: Container(
              alignment: Alignment(0, 0.6),
              child: Switch(
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.orange,
                value: true,
              ),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.72, 0.17),
            child: SizedBox(
              height: 80,
              child: Image(
                image: AssetImage('lib/assets/camera.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.9, 0.5),
            child: Container(
              alignment: Alignment(0, 0.4),
              child: Switch(
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                value: false,
              ),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('')),
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
