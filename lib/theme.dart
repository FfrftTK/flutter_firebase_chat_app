import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // ライトテーマをベースにアプリのテーマを改変
  final baseTheme = ThemeData.light();

  return baseTheme.copyWith();
}
