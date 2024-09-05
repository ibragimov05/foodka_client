part of '../signup_page.dart';

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (SignUpCubit cubit) => cubit.state.name.displayError,
    );

    return AppTextFormField(
      labelText: 'Name',
      onChanged: (name) => context.read<SignUpCubit>().nameChanged(name),
      textInputAction: TextInputAction.next,
      hintText: 'John',
      errorText: displayError != null ? 'Enter name' : null,
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (SignUpCubit cubit) => cubit.state.email.displayError,
    );

    return AppTextFormField(
      labelText: 'Email',
      hintText: 'example@gmail.com',
      textInputAction: TextInputAction.next,
      onChanged: (email) => context.read<SignUpCubit>().emailChanged(email),
      errorText: displayError != null ? 'Invalid email' : null,
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (SignUpCubit cubit) => cubit.state.password.displayError,
    );

    return AppTextFormField(
      labelText: 'Password',
      hintText: '***********',
      textInputAction: TextInputAction.next,
      isObscure: true,
      onChanged: (password) =>
          context.read<SignUpCubit>().passwordChanged(password),
      errorText: displayError != null ? 'At least 1 symbol and number' : null,
    );
  }
}

class _PasswordConfirmInput extends StatelessWidget {
  const _PasswordConfirmInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (SignUpCubit cubit) => cubit.state.confirmedPassword.displayError,
    );

    return AppTextFormField(
      labelText: 'Confirm password',
      hintText: '***********',
      textInputAction: TextInputAction.next,
      isObscure: true,
      onChanged: (passwordConfirmation) => context
          .read<SignUpCubit>()
          .confirmedPasswordChanged(passwordConfirmation),
      errorText: displayError != null ? 'Password should be similar' : null,
    );
  }
}

class _SignupButton extends StatelessWidget {
  const _SignupButton();

  @override
  Widget build(BuildContext context) {
    final authStatus = context.select(
      (AuthBloc cubit) => cubit.state.authStatus,
    );

    if (authStatus == AuthStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    final signUpCubitState = context.select(
      (SignUpCubit cubit) => cubit.state,
    );

    return FoodkaButton(
      onTap: signUpCubitState.isValid
          ? () => context.read<AuthBloc>().add(AuthEvent.signup(
                name: signUpCubitState.name.value,
                email: signUpCubitState.email.value,
                password: signUpCubitState.password.value,
              ))
          : null,
      buttonLabel: 'Sign up',
    );
  }
}
