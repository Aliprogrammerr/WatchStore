part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoadingState extends AuthState {}

class VerifyState extends AuthState{}

class ErrorState  extends AuthState {}

class SendState  extends AuthState {
  final mobile;
  SendState({required this.mobile});
}

class Login extends AuthState{}

class  LogOut extends AuthState{}

