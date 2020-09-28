import 'package:intl/intl.dart';

// Datetime Format extensions
extension AppDateExtension on DateTime {
  String toMessageDateFormat() => DateFormat('yyyy/MM/dd HH:mm').format(this);
}
