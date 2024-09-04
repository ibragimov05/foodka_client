import 'package:auto_route/auto_route.dart';
import 'package:foodka_client/navigation/router.gr.dart';
import 'package:formz/formz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/login_cubit.dart';
import '../../../../app_config.dart';
import '../../../widgets/widgets.dart';
import '../../widgets/auth_widgets.dart';
import '../../../../../core/utils/utils.dart';

part 'widgets/login_page_private_widgets.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: getIt.get<LoginCubit>(),
        child: _LoginView(),
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
                    onTap: () => context.router.push(const SignupRoute()),
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
