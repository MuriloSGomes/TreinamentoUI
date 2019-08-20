import 'package:flutter/cupertino.dart';
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
              padding: EdgeInsets.all(12),
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){},
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 230,
                    width: 390,
                    padding: EdgeInsets.only(left: 10.0, bottom: 8.0, top: 200),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://http2.mlstatic.com/cozinha-completa-balco-com-tampo-5-pecas-carrara-i-hd-D_NQ_NP_695102-MLB27156797377_042018-F.jpg"),
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
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: 230,
                    width: 390,
                    padding: EdgeInsets.only(left: 10.0, bottom: 8.0, top: 200),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.thespruce.com/thmb/DLwpM9BE0qxLbHZTTtrSXX88kaU=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-9261821821-5c69c1b7c9e77c0001675a49.jpg"),
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
          AlertDialog(
            titlePadding: EdgeInsets.all(0),
            title: Container(
            height: 30.00,
            width: 300.00,
              decoration: BoxDecoration(
                color: Colors.pink, 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
            ),
          ),
        ],
      );
    },
  );
}
