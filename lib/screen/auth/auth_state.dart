part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoadingState extends AuthState {}

class VerifiedIsRegistered extends AuthState{}

class VerifiedNotRegistered extends AuthState{}

class ErrorState  extends AuthState {}

class SendState  extends AuthState {
  // ignore: prefer_typing_uninitialized_variables
  final mobile;
  SendState({required this.mobile});
}

class Login extends AuthState{}

class  LogOut extends AuthState{}

