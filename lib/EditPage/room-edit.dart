import 'package:desafioux/entities/room.dart';
import 'package:flutter/material.dart';

class RoomEdit extends StatelessWidget {

  final RoomModel room;

  const RoomEdit({Key key, this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: Text(room.nomeImage),
        ),
      ),
    );
  }
}
