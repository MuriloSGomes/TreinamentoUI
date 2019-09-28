import 'dart:convert';

import 'dart:async';

import 'package:desafioux/service/api_service.dart';
import 'package:desafioux/service/services.dart';

class LoginService {
  Future<String> loginValido({String login, String senha}) async {
    var api = ApiService();
    var response = await api.post(
      url: "http://192.168.0.106/WebApiOficial/Login/ValideLogin",
      body: json.encode(
        {
          'Login': login,
          'Senha': senha,
        },
      ),
    );
    var result = json.decode(response);
    if (result["Codigo"] == 0)
      return result["Token"];
    throw new Exception(result["Mensagem"]);
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
    return false;
  }
}
