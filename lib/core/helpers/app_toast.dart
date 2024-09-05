import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class AppToast {
  static void error({
    required String errorMessage,
    required BuildContext context,
  }) =>
      toastification.show(
        context: context,
        title: Text(errorMessage),
        type: ToastificationType.error,
        icon: const Icon(Icons.error_outline),
        showIcon: true,
        style: ToastificationStyle.minimal,
        // autoCloseDuration: const Duration(seconds: 3),
        showProgressBar: true,
      );
}
