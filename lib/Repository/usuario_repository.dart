import 'dart:io';

import 'dart:convert';
import 'package:desafioux/service/file_service.dart';
import '../model/usuario_model.dart';

class UsuarioRepository {
  static UsuarioModel _cache;

  Future<String> _getFileName() async {
    return FileService().getLocalPath().then((path) => '$path/user.json');
  }

  Future<UsuarioModel> load() async {
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
    _cache = UsuarioModel.fromJson(decoded);
    return _cache;
  }

  Future<void> persist(UsuarioModel userModel) async {
    _cache = userModel;
    return _getFileName().then((fileName) {
      var content = json.encode(userModel.toJson());
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
