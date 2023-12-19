part of 'authorization_bloc.dart';


@immutable
sealed class AuthorizationState{}

final class AuthorizationInitial extends AuthorizationState {}

final class AuthorizationEnter extends AuthorizationState {}

final class AuthorizationReg extends AuthorizationState {}

final class AuthorizationSuccess extends AuthorizationState {}

final class AuthorizationFailure extends AuthorizationState {}