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
    throw new Exception(result["Requisição falhou"]);
  }
}
