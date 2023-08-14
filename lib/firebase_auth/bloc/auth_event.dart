part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(String email, String password) = _SignIn;
  const factory AuthEvent.register(String email, String password) = _Register;
}
