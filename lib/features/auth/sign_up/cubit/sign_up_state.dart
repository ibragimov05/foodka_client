part of 'sign_up_cubit.dart';


@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(Name.pure()) Name name,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword confirmedPassword,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _SignUpState;

  const SignUpState._();
}
