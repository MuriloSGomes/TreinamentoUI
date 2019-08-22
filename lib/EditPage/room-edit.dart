import 'package:desafioux/entities/room.dart';
import 'package:flutter/material.dart';

class RoomEdit extends StatelessWidget {
  final RoomModel room;

  const RoomEdit({Key key, this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white70,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.9, -0.9),
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white70,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0.5),
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white70,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.9, 0.5),
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('')
                ),
                color: Colors.white70,
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
