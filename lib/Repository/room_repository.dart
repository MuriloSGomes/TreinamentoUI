import 'dart:io';

import 'dart:convert';
import 'package:desafioux/model/room_model.dart';
import 'package:desafioux/service/file_service.dart';

class RoomRepository {
  static RoomModel _cache;

  Future<String> _getFileName() async {
    return FileService().getLocalPath().then((path) => '$path/room.json');
  }

  Future<RoomModel> load() async {
    if (_cache != null) {
      return _cache;
    }

    var fileName = await _getFileName();
    var arquivo = File(fileName);
    if (!arquivo.existsSync()) {
      return null;
    }
    var content = arquivo.readAsStringSync();
    var decoded = json.decode(content);
    _cache = RoomModel.fromJson(decoded);
    return _cache;
  }

  Future<void> persist(RoomModel roomModel) async {
    _cache = roomModel;
    return _getFileName().then((fileName) {
      var content = json.encode(roomModel.toJson());
      File(fileName).openWrite(mode: FileMode.writeOnly).write(content);
    });
  }

  void limpeCache() async {
    _cache = null;
    var fileName = await _getFileName();
    var arquivo = File(fileName);
    arquivo.deleteSync();
  }
}
