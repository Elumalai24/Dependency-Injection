

abstract class AuthEvent{}

class LoginEvent extends AuthEvent{
  final String userName;
  final String password;
  LoginEvent(this.userName, this.password);
}













































