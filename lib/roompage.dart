import 'package:desafioux/entities/room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashed_container/dashed_container.dart';

import 'EditPage/room-edit.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  var livingRoom =
      RoomModel(nomeImage: 'Living Room', image: 'lib/assets/livingRoom.jpg');
  var kitchen =
      RoomModel(nomeImage: 'Kitchen', image: 'lib/assets/kitchen.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
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
              alignment: Alignment(0, 1.9),
              child: IconButton(
                icon: Icon(Icons.add_circle_outline,
                    color: Colors.blueAccent, size: 40),
                onPressed: () {
                  _showDialog(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 230,
                    width: 390,
                    padding: EdgeInsets.only(left: 10.0, bottom: 8.0, top: 200),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/kitchen.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Kitchen',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '3 Devices',
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RoomEdit(
                          room: kitchen,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 230,
                    width: 390,
                    padding: EdgeInsets.only(left: 10.0, bottom: 8.0, top: 200),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/livingRoom.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Living Room',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '5 Devices',
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RoomEdit(
                          room: livingRoom,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
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
            icon: new Icon(Icons.home),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.notifications),
            title: new Text(''),
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
              children: <Widget>[
                Align(
                  heightFactor: 0,
                  widthFactor: 2,
                  alignment: Alignment(1.4, 0.72),
                  child: IconButton(
                      icon: Icon(
                        Icons.cancel,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
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
                      onPressed: () {}),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              contentPadding: EdgeInsets.all(40))
        ],
      );
    },
  );
}
