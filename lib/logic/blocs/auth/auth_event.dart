part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = LoginEvent;

  const factory AuthEvent.googleAuth() = GoogleAuthLogin;

  const factory AuthEvent.signup({
    required String name,
    required String email,
    required String password,
  }) = SignupEvent;

  const factory AuthEvent.resetPassword({
    required String email,
  }) = ResetPasswordEvent;

  const factory AuthEvent.checkTokenExpiry() = CheckTokenExpiryEvent;

  const factory AuthEvent.logOut() = LogoutEvent;
}
