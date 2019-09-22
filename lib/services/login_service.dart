import 'package:desafioux/services/api_service.dart';
import 'dart:convert';

import 'dart:async';

class LoginService {
  Future<bool> loginValido({String usuario, String senha}) async {
    var api = ApiService();

    var response = await api.post(
      url: "http://192.168.1.59/WebApiOficial/Login/ValideLogin",
      body: json.encode(
        {
          'Login': usuario,
          'Senha': senha,
        },
      ),
    );

    var result = json.decode(response);
    if (result["Codigo"] == 0) return true;
<<<<<<< HEAD
    throw new Exception(result["Requisição falhou"]);
=======
    throw new Exception(result["Mensagem"]);
>>>>>>> 4bb5efc714e4da19338a72bf620b9e3ba4ac8e70
  }
}
