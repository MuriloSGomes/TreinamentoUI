import 'package:desafioux/services/api_service.dart';
import 'dart:convert';

import 'dart:async';

class LoginService {
  Future<bool> loginValido({String usuario, String senha}) async {
    var api = ApiService();
    var response = await api.post(
      url: "http://192.168.0.106/WebApiOficial/Login/ValideLogin",
      body: json.encode(
        {
          'Login': usuario,
          'Senha': senha,
        },
      ),
    );
    var result = json.decode(response);
    if (result["Codigo"] == 0)
      return true;
    throw new Exception(result["Requisição falhou"]);
  }

  Future<bool> registreLogin({String email, String senha}) async{
    var api = ApiService();

    var response = await api.post(
      url: "http://192.168.0.106/WebApiOficial/Login/RegistreLogin",
      body: json.encode(
        {
          'Login' : email,
          'Senha' : senha,
        },
      ),
    );
    var result = json.decode(response);
    if(result["Codigo"] == 0)
      return true;
  }
}
