import 'package:flutter/material.dart';

class AppSnackBar {
  static void showSnackBar({
    required String message,
    required BuildContext context,
  }) =>
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              message,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        );
}
