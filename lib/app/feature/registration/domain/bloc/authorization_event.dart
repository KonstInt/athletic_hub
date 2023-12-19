part of 'authorization_bloc.dart';


@immutable
sealed class AuthorizationEvent {}

class RegEvent extends AuthorizationEvent {}

class EnterEvent extends AuthorizationEvent {}