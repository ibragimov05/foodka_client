import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([super.value = '']) : super.dirty();

  static final _passwordRegExp =
      RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9!@#$&*~]).{8,}$');

  @override
  PasswordValidationError? validator(String? value) =>
      _passwordRegExp.hasMatch(value ?? '')
          ? null
          : PasswordValidationError.invalid;
}
