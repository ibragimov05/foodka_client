import 'package:flutter/material.dart';

import 'core/app.dart';
import 'app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppConfig.setUp();

  runApp(const App());
}
