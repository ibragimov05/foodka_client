import 'package:formz/formz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/login_cubit.dart';
import '../../../../app_config.dart';
import '../../../widgets/widgets.dart';
import '../../widgets/auth_widgets.dart';
import '../../../../logic/blocs/blocs.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../navigation/app_router.dart';

part 'widgets/login_page_private_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: getIt.get<LoginCubit>(),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, authState) {
            if (authState.authStatus == AuthStatus.error) {
              AppToast.error(
                errorMessage: authState.error ?? 'error',
                context: context,
              );
            }
          },
          child: _LoginView(),
        ),
      );
}

class _LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greyscale600,
                ),
              ),
              Column(
                children: [
                  const _EmailInput(),
                  24.sH,
                  const _PasswordInput(),
                ],
              ),
              Column(
                children: [
                  const _LoginButton(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'or continue with',
                      style: TextStyle(color: AppColors.greyscale400),
                    ),
                  ),
                  ZoomTapAnimation(
                    child: AppAssets.icons.google.svg(width: 30, height: 30),
                  ),
                ],
              ),
              Column(
                children: [
                  ZoomTapAnimation(
                    onTap: () => Navigator.pushNamed(
                      context,
                      AppRouter.register,
                    ),
                    child: const Text(
                      'Don\'t have an account? Sign up',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  10.sH,
                  AuthButton(
                    buttonLabel: 'Forgot password?',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
