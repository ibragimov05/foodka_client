import 'package:flutter/material.dart';
import 'package:foodka_client/core/utils/app_colors.dart';
import 'package:foodka_client/core/utils/gen/fonts.gen.dart';

class FoodkaTheme {
  FoodkaTheme._private();

  static final FoodkaTheme _instance = FoodkaTheme._private();

  factory FoodkaTheme() => _instance;

  static ThemeData get light => ThemeData(
        fontFamily: FontFamily.yandexSans,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          centerTitle: true,
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.brand400,
          selectionHandleColor: AppColors.brand400,
          selectionColor: AppColors.brand400.withOpacity(0.1),
        ),
      );

  static ThemeData get dark => ThemeData(
        fontFamily: FontFamily.yandexSans,
      );
}
