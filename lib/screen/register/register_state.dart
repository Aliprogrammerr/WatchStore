part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}
class LoadingState extends RegisterState {}
class ErrorState extends RegisterState {}
class OkSTateResponse extends RegisterState {}
class LocationPitState  extends RegisterState {
  final GeoPoint? location;
  LocationPitState({required this.location});
  
}


