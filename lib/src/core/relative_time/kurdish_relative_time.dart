/// Kurdish Relative Time
/// کاتی نسبی بە کوردی - وەک "٢ خولەک لەمەوپێش"

class KurdishRelativeTime {
  KurdishRelativeTime._();

  /// گەڕاندنەوەی کاتی نسبی بە کوردی
  static String fromDateTime(DateTime dateTime, {DateTime? now}) {
    now ??= DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.isNegative) {
      return _futureTime(difference.abs());
    }
    return _pastTime(difference);
  }

  static String _pastTime(Duration difference) {
    if (difference.inSeconds < 5) {
      return 'ئێستا';
    }
    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} چرکە لەمەوپێش';
    }
    if (difference.inMinutes < 2) {
      return 'خولەکێک لەمەوپێش';
    }
    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} خولەک لەمەوپێش';
    }
    if (difference.inHours < 2) {
      return 'کاتژمێرێک لەمەوپێش';
    }
    if (difference.inHours < 24) {
      return '${difference.inHours} کاتژمێر لەمەوپێش';
    }
    if (difference.inDays < 2) {
      return 'دوێنێ';
    }
    if (difference.inDays < 7) {
      return '${difference.inDays} ڕۆژ لەمەوپێش';
    }
    if (difference.inDays < 14) {
      return 'هەفتەیەک لەمەوپێش';
    }
    if (difference.inDays < 30) {
      return '${(difference.inDays / 7).floor()} هەفتە لەمەوپێش';
    }
    if (difference.inDays < 60) {
      return 'مانگێک لەمەوپێش';
    }
    if (difference.inDays < 365) {
      return '${(difference.inDays / 30).floor()} مانگ لەمەوپێش';
    }
    if (difference.inDays < 730) {
      return 'ساڵێک لەمەوپێش';
    }
    return '${(difference.inDays / 365).floor()} ساڵ لەمەوپێش';
  }

  static String _futureTime(Duration difference) {
    if (difference.inSeconds < 5) {
      return 'ئێستا';
    }
    if (difference.inSeconds < 60) {
      return 'لە ${difference.inSeconds} چرکەدا';
    }
    if (difference.inMinutes < 2) {
      return 'لە خولەکێکدا';
    }
    if (difference.inMinutes < 60) {
      return 'لە ${difference.inMinutes} خولەکدا';
    }
    if (difference.inHours < 2) {
      return 'لە کاتژمێرێکدا';
    }
    if (difference.inHours < 24) {
      return 'لە ${difference.inHours} کاتژمێردا';
    }
    if (difference.inDays < 2) {
      return 'سبەینێ';
    }
    if (difference.inDays < 7) {
      return 'لە ${difference.inDays} ڕۆژدا';
    }
    if (difference.inDays < 14) {
      return 'لە هەفتەیەکدا';
    }
    if (difference.inDays < 30) {
      return 'لە ${(difference.inDays / 7).floor()} هەفتەدا';
    }
    if (difference.inDays < 60) {
      return 'لە مانگێکدا';
    }
    if (difference.inDays < 365) {
      return 'لە ${(difference.inDays / 30).floor()} مانگدا';
    }
    if (difference.inDays < 730) {
      return 'لە ساڵێکدا';
    }
    return 'لە ${(difference.inDays / 365).floor()} ساڵدا';
  }
}

/// ئێکستێنشن بۆ DateTime
extension KurdishRelativeTimeExtension on DateTime {
  /// گەڕاندنەوەی کاتی نسبی بە کوردی
  String get toKurdishRelative => KurdishRelativeTime.fromDateTime(this);

  /// گەڕاندنەوەی کاتی نسبی بە کوردی لەگەڵ کاتی ئێستا
  String kurdishTimeAgo({DateTime? now}) =>
      KurdishRelativeTime.fromDateTime(this, now: now);
}
