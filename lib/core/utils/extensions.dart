import 'package:flutter/cupertino.dart';

extension SizedBoxX on int {
  SizedBox get sH => SizedBox(height: toDouble());

  SizedBox get sW => SizedBox(width: toDouble());
}
