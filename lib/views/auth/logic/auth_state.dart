
import 'package:flutter/cupertino.dart';

@immutable
sealed class AuthenticationState{}

final class AuthenticationInitial extends AuthenticationState{}

final class LoginSuccess extends AuthenticationState{}

final class LoginLoading extends AuthenticationState{}
final class LoginError extends AuthenticationState{
 final String message;
 LoginError(this.message);
}

final class RegisterSuccess extends AuthenticationState{}

final class RegisterLoading extends AuthenticationState{}
final class RegisterError extends AuthenticationState{
  final String message;
  RegisterError(this.message);
}

