import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../theme/theme.dart';
import '../navigation/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => ToastificationWrapper(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: FoodkaTheme.light,
          darkTheme: FoodkaTheme.dark,
          onGenerateRoute: AppRouter.generateRoute,
        ),
      );
}
