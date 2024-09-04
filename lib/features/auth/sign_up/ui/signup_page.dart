import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodka_client/app_config.dart';
import 'package:foodka_client/features/auth/sign_up/cubit/sign_up_cubit.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt.get<SignUpCubit>(),
      child: const FlutterLogo(),
    );
  }
}
