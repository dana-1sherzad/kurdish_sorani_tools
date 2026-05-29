/// Kurdish Date/Time Formatter
/// گۆڕینی بەروار و کات بۆ فۆرماتی کوردی سۆرانی

class KurdishDateTime {
  KurdishDateTime._();

  /// ناوی ڕۆژەکانی هەفتە بە کوردی
  static const List<String> dayNames = [
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
    'یەکشەممە',
  ];

  /// ناوی کورتکراوی ڕۆژەکانی هەفتە
  static const List<String> dayNamesShort = [
    'دوو',
    'سێ',
    'چوار',
    'پێنج',
    'هەینی',
    'شەم',
    'یەک',
  ];

  /// ناوی مانگەکان بە کوردی
  static const List<String> monthNames = [
    'کانوونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'ئایار',
    'حوزەیران',
    'تەممووز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانوونی یەکەم',
  ];

  /// ناوی کورتکراوی مانگەکان
  static const List<String> monthNamesShort = [
    'کانوونی٢',
    'شوبات',
    'ئازار',
    'نیسان',
    'ئایار',
    'حوزەیران',
    'تەممووز',
    'ئاب',
    'ئەیلوول',
    'تشرینی١',
    'تشرینی٢',
    'کانوونی١',
  ];

  /// گەڕاندنەوەی ناوی ڕۆژ بە کوردی
  static String getDayName(int weekday) {
    // DateTime.weekday: 1=Monday, 7=Sunday
    return dayNames[weekday - 1];
  }

  /// گەڕاندنەوەی ناوی کورتکراوی ڕۆژ
  static String getDayNameShort(int weekday) {
    return dayNamesShort[weekday - 1];
  }

  /// گەڕاندنەوەی ناوی مانگ بە کوردی
  static String getMonthName(int month) {
    return monthNames[month - 1];
  }

  /// گەڕاندنەوەی ناوی کورتکراوی مانگ
  static String getMonthNameShort(int month) {
    return monthNamesShort[month - 1];
  }

  /// فۆرماتکردنی بەروار بە کوردی
  /// pattern: "yyyy/MM/dd" یان "dd MMMM yyyy" یان "EEEE, dd MMMM yyyy"
  static String format(DateTime date, {String pattern = 'dd MMMM yyyy'}) {
    String result = pattern;

    result = result.replaceAll('EEEE', getDayName(date.weekday));
    result = result.replaceAll('EEE', getDayNameShort(date.weekday));
    result = result.replaceAll('MMMM', getMonthName(date.month));
    result = result.replaceAll('MMM', getMonthNameShort(date.month));
    result = result.replaceAll('MM', date.month.toString().padLeft(2, '0'));
    result = result.replaceAll('dd', date.day.toString().padLeft(2, '0'));
    result = result.replaceAll('yyyy', date.year.toString());
    result = result.replaceAll('yy', date.year.toString().substring(2));
    result = result.replaceAll('HH', date.hour.toString().padLeft(2, '0'));
    result = result.replaceAll('mm', date.minute.toString().padLeft(2, '0'));
    result = result.replaceAll('ss', date.second.toString().padLeft(2, '0'));

    return result;
  }

  /// گەڕاندنەوەی بەرواری ئەمڕۆ بە کوردی
  static String today({String pattern = 'EEEE, dd MMMM yyyy'}) {
    return format(DateTime.now(), pattern: pattern);
  }
}

/// ئێکستێنشن بۆ DateTime
extension KurdishDateTimeExtension on DateTime {
  /// گەڕاندنەوەی بەروار بە فۆرماتی کوردی
  String toKurdishDate({String pattern = 'dd MMMM yyyy'}) {
    return KurdishDateTime.format(this, pattern: pattern);
  }

  /// گەڕاندنەوەی ناوی ڕۆژ بە کوردی
  String get kurdishDayName => KurdishDateTime.getDayName(weekday);

  /// گەڕاندنەوەی ناوی مانگ بە کوردی
  String get kurdishMonthName => KurdishDateTime.getMonthName(month);
}
