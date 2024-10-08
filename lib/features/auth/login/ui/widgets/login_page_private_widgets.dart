part of '../login_page.dart';

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (LoginCubit cubit) => cubit.state.email.displayError,
    );

    return AppTextFormField(
      labelText: 'Email',
      onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
      hintText: 'example@gmail.com',
      textInputAction: TextInputAction.next,
      textInputType: TextInputType.emailAddress,
      errorText: displayError != null ? 'Invalid email' : null,
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (LoginCubit cubit) => cubit.state.password.displayError,
    );

    return AppTextFormField(
      labelText: 'Password',
      onChanged: (password) =>
          context.read<LoginCubit>().passwordChanged(password),
      hintText: '**********',
      isObscure: true,
      errorText: displayError != null ? 'Enter your password' : null,
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    final isInProgress = context.select(
      (LoginCubit cubit) => cubit.state.status.isInProgress,
    );

    if (isInProgress) return const Center(child: CircularProgressIndicator());

    final loginState = context.select(
      (LoginCubit cubit) => cubit.state,
    );

    return FoodkaButton(
      buttonLabel: 'Login',
      onTap: loginState.isValid
          ? () => context.read<AuthBloc>().add(AuthEvent.login(
                email: loginState.email.value,
                password: loginState.password.value,
              ))
          : null,
    );
  }
}
