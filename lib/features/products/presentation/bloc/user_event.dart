part of 'user_bloc.dart';

abstract class UserEvent {}

class RegisterSubmitted extends UserEvent {
  final String email;
  final String password;

  RegisterSubmitted(this.email, this.password);
}
