import 'package:flutter/cupertino.dart';

extension SizedBoxX on int {
  SizedBox get sH => SizedBox(height: toDouble());

  SizedBox get sW => SizedBox(width: toDouble());
}

extension StringX on String {
  String get capitalize => this[0].toUpperCase() + substring(1).toLowerCase();
}