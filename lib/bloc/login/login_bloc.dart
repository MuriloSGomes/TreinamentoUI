import 'package:bloc/bloc.dart';
import 'package:desafioux/Repository/repositorys.dart';
import 'package:desafioux/service/login_service.dart';


import '../blocs.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginState.Inicializando();

  @override
  Stream<LoginState> mapEventToState(event) async* {
    if (event is LoginPressedEvent) {
      if (event.senha.isEmpty || event.login.isEmpty) {
        yield LoginState.erro("Usuário ou senha não informado");
        return;
      }

      yield LoginState.carregando();

      try {
        var token = await LoginService().loginValido(login: event.login, senha: event.senha);
        TokenRepository().persistToken(token: token);
        yield LoginState.sucesso(token);
      } catch (e) {
        yield LoginState.erro(e.toString());
      }
    }
  }
}

