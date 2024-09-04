import 'package:flutter/material.dart';
import 'package:foodka_client/core/utils/app_colors.dart';

import '../../widgets/widgets.dart';

class AuthButton extends StatelessWidget {
  final String buttonLabel;
  final void Function() onTap;

  const AuthButton({
    super.key,
    required this.buttonLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Text(
        buttonLabel,
        style: const TextStyle(
          color: AppColors.info500,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
