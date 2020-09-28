import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // ライトテーマをベースにアプリのテーマを改変
  final baseTheme = ThemeData.light();

  return ThemeData(
    accentColor: Colors.black12,
    colorScheme:
        baseTheme.colorScheme.copyWith(onSurface: const Color(0xff0000ff)),
    buttonTheme: ButtonThemeData(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      colorScheme: baseTheme.buttonTheme.colorScheme.copyWith(),
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
