part of 'auth_bloc.dart';

@immutable
class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  LoginEvent({required this.email, required this.password});
}

class createUserEvent extends AuthEvent {
  final String email;
  final String username;
  final String password;

  createUserEvent({required this.username, required this.password, required this.email});
}
