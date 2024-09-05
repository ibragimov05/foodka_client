import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';

class AnnouncementItem extends StatelessWidget {
  final String label;
  final String imagePath;

  const AnnouncementItem({
    super.key,
    required this.label,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.brand100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: DeviceScreen.w(context) / 2.7,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.greyscale600,
              ),
            ),
          ),
          Image.asset(
            imagePath,
            height: DeviceScreen.w(context) * 84 / 360,
            // width: DeviceScreen.w(context) * 84 / 360,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
