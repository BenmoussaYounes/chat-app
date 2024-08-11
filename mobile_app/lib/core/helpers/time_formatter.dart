import 'package:intl/intl.dart';

class TimeFormatter {
  static String formatSentTime(DateTime sentTime) {
    final now = DateTime.now();
    final difference = now.difference(sentTime);

    if (difference.inDays == 0) {
      // If the message was sent today, show the time
      return DateFormat('h:mm a').format(sentTime);
    } else if (difference.inDays < 7) {
      // If the message was sent within the last week, show the weekday and time
      return DateFormat('EEE, h:mm a').format(sentTime);
    } else if (difference.inDays < 365) {
      // If the message was sent this year, show the day and month
      return DateFormat('MMM d').format(sentTime);
    } else {
      // If the message was sent in a previous year, show the full date
      return DateFormat('MMM d, yyyy').format(sentTime);
    }
  }
}
