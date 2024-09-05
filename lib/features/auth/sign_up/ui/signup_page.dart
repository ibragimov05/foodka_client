import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodka_client/logic/blocs/auth/auth_bloc.dart';

import '../cubit/sign_up_cubit.dart';
import '../../../../app_config.dart';
import '../../../widgets/widgets.dart';
import '../../../../core/utils/utils.dart';

part 'widgets/signup_page_private_widgets.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: getIt.get<SignUpCubit>(),
        child: const _SignupView(),
      );
}

class _SignupView extends StatelessWidget {
  const _SignupView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Sign up',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.greyscale600,
                  fontSize: 24,
                ),
              ),
              Column(
                children: [
                  const _NameInput(),
                  10.sH,
                  const _EmailInput(),
                  10.sH,
                  const _PasswordInput(),
                  10.sH,
                  const _PasswordConfirmInput(),
                ],
              ),
              const _SignupButton(),
              ZoomTapAnimation(
                onTap: () => context.router.popForced(),
                child: const Text(
                  'Already registered? Log in',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
