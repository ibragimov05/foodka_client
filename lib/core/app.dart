import 'package:flutter/material.dart';
import 'package:foodka_client/navigation/router.dart';

import 'utils/gen/fonts.gen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: FontFamily.yandexSans),
      routerConfig: _appRouter.config(),
    );
  }
}
