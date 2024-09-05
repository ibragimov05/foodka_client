import 'package:flutter/material.dart';
import 'package:foodka_client/features/widgets/widgets.dart';

import '../../../../core/utils/utils.dart';

class FoodTypeTitleTextItem extends StatelessWidget {
  final String title;
  final void Function() onViewAllTap;

  const FoodTypeTitleTextItem({
    super.key,
    required this.title,
    required this.onViewAllTap,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.greyscale600,
              ),
            ),
            ZoomTapAnimation(
              onTap: onViewAllTap,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'View all',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.greyscale400,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
