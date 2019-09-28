abstract class LoginEvent {}

class LoginPressedEvent extends LoginEvent{
  final String login;
  final String senha;

  LoginPressedEvent({this.login, this.senha});
}