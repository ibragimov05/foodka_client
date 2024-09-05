import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../theme/theme.dart';
import '../navigation/router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: FoodkaTheme.light,
        darkTheme: FoodkaTheme.dark,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
