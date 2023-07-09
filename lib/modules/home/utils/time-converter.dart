import 'package:timeago/timeago.dart' as timeago;
class TimeConverter {
  static String timeUntil(String date) {
    DateTime? dateTime = DateTime.parse(date);
    return timeago.format(dateTime, allowFromNow: true);
  }
}