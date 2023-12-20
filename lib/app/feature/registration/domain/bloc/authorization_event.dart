part of 'authorization_bloc.dart';


@immutable
sealed class AuthorizationEvent {}

class AuthEvent extends AuthorizationEvent {
  final AuthorizationModel auth;
  AuthEvent(this.auth);
}

class RegEvent extends AuthorizationEvent {}

class EnterEvent extends AuthorizationEvent {}