import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String formatDate() => DateFormat("dd/MM/yyyy").format(this);
}
