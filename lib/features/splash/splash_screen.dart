import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodka_client/core/utils/app_colors.dart';
import 'package:foodka_client/core/utils/app_constants.dart';
import 'package:foodka_client/features/auth/login/ui/login_page.dart';
import 'package:foodka_client/features/main/ui/main_page.dart';

import '../../../core/utils/assets.dart';
import '../../logic/blocs/blocs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then(
      (value) => _toTheNextScreen(),
    );
  }

  void _toTheNextScreen() => Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              BlocSelector<AuthBloc, AuthState, AuthStatus>(
            selector: (state) => state.authStatus,
            builder: (BuildContext context, AuthStatus authStatus) =>
                authStatus == AuthStatus.authenticated
                    ? const MainPage()
                    : const LoginPage(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brand600,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppAssets.icons.logo.svg(),
            const Text(
              AppConstants.appName,
              style: TextStyle(
                color: AppColors.greyscale900,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
