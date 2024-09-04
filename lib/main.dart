import 'package:flutter/material.dart';

import 'core/app.dart';
import 'app_config.dart';

void main() async {
  AppConfig.setUp();

  runApp(const App());
}