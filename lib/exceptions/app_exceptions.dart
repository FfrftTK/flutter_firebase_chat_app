import 'package:flutter/foundation.dart';

// Base exception class in App
class AppException implements Exception {
  AppException(this.error, [this.message]);
  final AppError error;
  final String message;

  @override
  String toString() {
    return '$message';
  }
}

@immutable
class AppError {
  const AppError({
    this.summary = 'Error',
    this.description = 'Some error has occured.',
  });
  final String summary;
  final String description;
}
