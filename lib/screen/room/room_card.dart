import 'package:desafioux/model/room_model.dart';
import 'package:desafioux/screen/edit_page/room-edit.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatefulWidget {
  final RoomModel roomModel;

  const RoomCard({this.roomModel});

  @override
  _RoomCardState createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {

  @override
  Widget build(BuildContext context) {
    var room = this.widget.roomModel;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: RaisedButton(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(0),
        child: Container(
          height: 230,
          width: double.infinity,
          padding: EdgeInsets.only(left: 10.0, bottom: 8.0, top: 200),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(room.image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                room.nomeImage,
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 20,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  '${room.quantidadeDevices} Devices',
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
                room: room,
              ),
            ),
          );
        },
      ),
    );
  }
}
