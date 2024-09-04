import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:foodka_client/core/utils/app_colors.dart';
import 'package:foodka_client/core/utils/app_constants.dart';

import '../../../core/utils/assets.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
