import 'package:flutter/material.dart';
import 'package:foodka_client/core/utils/app_colors.dart';

class FoodkaButton extends StatelessWidget {
  final String buttonLabel;
  final void Function()? onTap;
  final double height, width;

  const FoodkaButton({
    super.key,
    required this.onTap,
    required this.buttonLabel,
    this.height = 50,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          onTap == null ? AppColors.greyscale300 : AppColors.brand500,
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Center(
          child: Text(
            buttonLabel,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: onTap == null
                  ? AppColors.foodkaWhite
                  : AppColors.greyscale900,
            ),
          ),
        ),
      ),
    );
  }
}
