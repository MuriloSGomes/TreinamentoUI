class LoginState {
  final bool isInicializando;
  final bool isCarregando;
  final bool isSucesso;
  final bool isErro;
  final String token;
  final String erro;

  LoginState({
    this.isInicializando,
    this.isCarregando,
    this.isSucesso,
    this.isErro,
    this.token,
    this.erro,
  });

  factory LoginState.Inicializando() {
    return LoginState(
      isInicializando: true,
      isCarregando:false,
      isSucesso: false,
      isErro: false,
      token: null,
      erro: null,
    );
  }

  factory LoginState.carregando() {
    return LoginState(
      isInicializando: false,
      isCarregando:true,
      isSucesso: false,
      isErro: false,
      token: null,
      erro: null,
    );
  }

  factory LoginState.sucesso(String token) {
    return LoginState(
      isInicializando: false,
      isCarregando:false,
      isSucesso: true,
      isErro: false,
      token: token,
      erro: null,
    );
  }

  factory LoginState.erro(String erro) {
    return LoginState(
      isInicializando: false,
      isCarregando:false,
      isSucesso: false,
      isErro: true,
      token: null,
      erro: erro,
    );
  }
}
