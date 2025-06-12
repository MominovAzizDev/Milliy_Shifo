part of 'user_bloc.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserSuccess extends UserState {}

class UserFailure extends UserState {
  final String message;
  UserFailure(this.message);
}
