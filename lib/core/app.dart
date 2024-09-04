import 'package:flutter/material.dart';

import 'utils/gen/fonts.gen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: FontFamily.workSans,
      ),
      home: const Placeholder(),
    );
  }
}
