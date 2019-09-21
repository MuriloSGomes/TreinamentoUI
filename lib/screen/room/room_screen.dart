import 'package:desafioux/model/room_model.dart';
import 'package:desafioux/screen/edit_page/room-edit.dart';
import 'package:desafioux/screen/new_room_screen.dart';
import 'package:desafioux/screen/widget_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashed_container/dashed_container.dart';

import '../screens.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  var livingRoom =
      RoomModel(nomeImage: 'Living Room', image: 'assets/livingRoom.jpg');
  var kitchen = RoomModel(nomeImage: 'Kitchen', image: 'assets/kitchen.jpg');

  @override
  Widget build(BuildContext context) {
    var actions = List<Widget>()
      ..add(
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 5),
          child: IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.black, size: 40),
            onPressed: () {
              _showDialog(context);
            },
          ),
        ),
      );

    var room2 = RoomModel(
      image: 'assets/kitchen.jpg',
      nomeImage: "Kithcen",
      quantidadeDevices: 3,
    );

    var room1 = RoomModel(
      image: 'assets/livingRoom.jpg',
      nomeImage: "Living Room",
      quantidadeDevices: 3,
    );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: WidgetHelper.appBar(
          "Room",
          actions,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: <Widget>[
                RoomCard(
                  roomModel: room2,
                ),
                RoomCard(
                  roomModel: room1,
                ),
                DashedContainer(
                  child: Container(
                    height: 230,
                    width: 390,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '+ Add room',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  dashColor: Colors.grey,
                  borderRadius: 20.0,
                  dashedLength: 7,
                  strokeWidth: 2,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.donut_small),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}

void _showDialog(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SimpleDialog(
            titlePadding: EdgeInsets.all(0),
            title: Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.65,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.cancel,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            contentPadding:
                EdgeInsets.only(right: 40, bottom: 40, left: 40, top: 0),
            children: <Widget>[
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFf7769c), Color(0xFFf99587)]),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          child: Text(
                            'Add Room',
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                        Align(
                          heightFactor: 0,
                          widthFactor: 0,
                          alignment: Alignment(-4, 0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewRoomPage()));
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF385ff1), Color(0xFF7414d8)]),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          child: Text(
                            'Add Device',
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                        Align(
                          heightFactor: 0,
                          widthFactor: 0,
                          alignment: Alignment(-4, 0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {}),
              ),
            ],
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ],
      );
    },
  );
}
