import 'package:flutter/material.dart';
import 'package:foodka_client/core/utils/utils.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  final String label;
  final String foodImagePath;

  const CategoryItem({
    super.key,
    required this.index,
    required this.label,
    required this.foodImagePath,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(
          top: 10,
          left: index == 0 ? 16 : 0,
          right: index == AppAssets.foods.values.length - 1 ? 16 : 0,
        ),
        padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.greyscale100,
            width: 1.3,
          ),
        ),
        child: Row(
          children: [
            Image.asset(foodImagePath),
            4.sW,
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.greyscale600,
              ),
            ),
          ],
        ),
      );
}
