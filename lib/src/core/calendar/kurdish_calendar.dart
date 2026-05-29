/// Kurdish Calendar Support
/// پشتگیری ڕۆژژمێری کوردی، هیجری، و گریگۆری

class KurdishCalendar {
  KurdishCalendar._();

  // ═══════════════════════════════════════════
  // Hijri (Islamic) Calendar
  // ═══════════════════════════════════════════

  /// ناوی مانگەکانی هیجری بە کوردی
  static const List<String> hijriMonthNames = [
    'موحەڕەم',
    'سەفەر',
    'ڕەبیعی یەکەم',
    'ڕەبیعی دووەم',
    'جومادی یەکەم',
    'جومادی دووەم',
    'ڕەجەب',
    'شەعبان',
    'ڕەمەزان',
    'شەوال',
    'زولقەعدە',
    'زولحیججە',
  ];

  /// ناوی مانگەکانی هیجری بە عەرەبی
  static const List<String> hijriMonthNamesArabic = [
    'محرم',
    'صفر',
    'ربيع الأول',
    'ربيع الثاني',
    'جمادى الأولى',
    'جمادى الآخرة',
    'رجب',
    'شعبان',
    'رمضان',
    'شوال',
    'ذو القعدة',
    'ذو الحجة',
  ];

  /// گۆڕینی بەرواری گریگۆری بۆ هیجری
  static HijriDate gregorianToHijri(DateTime date) {
    final jd = _gregorianToJulian(date.year, date.month, date.day);
    return _julianToHijri(jd);
  }

  /// گۆڕینی بەرواری هیجری بۆ گریگۆری
  static DateTime hijriToGregorian(int year, int month, int day) {
    final jd = _hijriToJulian(year, month, day);
    return _julianToGregorian(jd);
  }

  /// فۆرماتکردنی بەرواری هیجری بە کوردی
  static String formatHijri(DateTime date, {String pattern = 'dd MMMM yyyy'}) {
    final hijri = gregorianToHijri(date);
    String result = pattern;
    result = result.replaceAll('MMMM', hijriMonthNames[hijri.month - 1]);
    result = result.replaceAll('MM', hijri.month.toString().padLeft(2, '0'));
    result = result.replaceAll('dd', hijri.day.toString().padLeft(2, '0'));
    result = result.replaceAll('yyyy', hijri.year.toString());
    return result;
  }

  // ═══════════════════════════════════════════
  // Kurdish (Rojhalati) Calendar
  // ═══════════════════════════════════════════

  /// ناوی مانگەکانی کوردی (ڕۆژهەڵاتی)
  static const List<String> kurdishMonthNames = [
    'خاکەلێوە',
    'گوڵان',
    'جۆزەردان',
    'پووشپەڕ',
    'گەلاوێژ',
    'خەرمانان',
    'ڕەزبەر',
    'گەڵاڕێزان',
    'سەرماوەز',
    'بەفرانبار',
    'ڕێبەندان',
    'ڕەشەمە',
  ];

  /// گۆڕینی گریگۆری بۆ کوردی (ڕۆژهەڵاتی = ئێرانی/شەمسی + 1321)
  static KurdishDate gregorianToKurdish(DateTime date) {
    final persian = _gregorianToPersian(date.year, date.month, date.day);
    // Kurdish calendar = Persian calendar + 1321 years offset
    return KurdishDate(
      year: persian[0] + 1321,
      month: persian[1],
      day: persian[2],
    );
  }

  /// فۆرماتکردنی بەرواری کوردی (ڕۆژهەڵاتی)
  static String formatKurdish(DateTime date,
      {String pattern = 'dd MMMM yyyy'}) {
    final kd = gregorianToKurdish(date);
    String result = pattern;
    result = result.replaceAll('MMMM', kurdishMonthNames[kd.month - 1]);
    result = result.replaceAll('MM', kd.month.toString().padLeft(2, '0'));
    result = result.replaceAll('dd', kd.day.toString().padLeft(2, '0'));
    result = result.replaceAll('yyyy', kd.year.toString());
    return result;
  }

  // ═══════════════════════════════════════════
  // Internal conversion algorithms
  // ═══════════════════════════════════════════

  static int _gregorianToJulian(int year, int month, int day) {
    if (month <= 2) {
      year--;
      month += 12;
    }
    final a = (year / 100).floor();
    final b = 2 - a + (a / 4).floor();
    return (365.25 * (year + 4716)).floor() +
        (30.6001 * (month + 1)).floor() +
        day +
        b -
        1524;
  }

  static HijriDate _julianToHijri(int jd) {
    final l = jd - 1948440 + 10632;
    final n = ((l - 1) / 10631).floor();
    final l2 = l - 10631 * n + 354;
    final j = ((10985 - l2) / 5316).floor() * ((50 * l2) / 17719).floor() +
        (l2 / 5670).floor() * ((43 * l2) / 15238).floor();
    final l3 = l2 -
        ((30 - j) / 15).floor() * ((17719 * j) / 50).floor() -
        (j / 16).floor() * ((15238 * j) / 43).floor() +
        29;
    final month = ((24 * l3) / 709).floor();
    final day = l3 - ((709 * month) / 24).floor();
    final year = 30 * n + j - 30;
    return HijriDate(year: year, month: month, day: day);
  }

  static int _hijriToJulian(int year, int month, int day) {
    return ((11 * year + 3) / 30).floor() +
        354 * year +
        30 * month -
        ((month - 1) / 2).floor() +
        day +
        1948440 -
        385;
  }

  static DateTime _julianToGregorian(int jd) {
    final l = jd + 68569;
    final n = ((4 * l) / 146097).floor();
    final l2 = l - ((146097 * n + 3) / 4).floor();
    final i = ((4000 * (l2 + 1)) / 1461001).floor();
    final l3 = l2 - ((1461 * i) / 4).floor() + 31;
    final j = ((80 * l3) / 2447).floor();
    final day = l3 - ((2447 * j) / 80).floor();
    final l4 = (j / 11).floor();
    final month = j + 2 - 12 * l4;
    final year = 100 * (n - 49) + i + l4;
    return DateTime(year, month, day);
  }

  static List<int> _gregorianToPersian(int gy, int gm, int gd) {
    final gDaysInMonth = [
      0,
      31,
      59,
      90,
      120,
      151,
      181,
      212,
      243,
      273,
      304,
      334
    ];
    var gy2 = (gm > 2) ? gy + 1 : gy;
    var days = 355666 +
        (365 * gy) +
        ((gy2 + 3) ~/ 4) -
        ((gy2 + 99) ~/ 100) +
        ((gy2 + 399) ~/ 400) +
        gd +
        gDaysInMonth[gm - 1];
    var jy = -1595 + (33 * (days ~/ 12053));
    days %= 12053;
    jy += 4 * (days ~/ 1461);
    days %= 1461;
    if (days > 365) {
      jy += ((days - 1) ~/ 365);
      days = (days - 1) % 365;
    }
    int jm, jd;
    if (days < 186) {
      jm = 1 + (days ~/ 31);
      jd = 1 + (days % 31);
    } else {
      jm = 7 + ((days - 186) ~/ 30);
      jd = 1 + ((days - 186) % 30);
    }
    return [jy, jm, jd];
  }
}

/// مۆدێلی بەرواری هیجری
class HijriDate {
  final int year;
  final int month;
  final int day;
  const HijriDate({required this.year, required this.month, required this.day});

  @override
  String toString() => '$year/$month/$day';
}

/// مۆدێلی بەرواری کوردی
class KurdishDate {
  final int year;
  final int month;
  final int day;
  const KurdishDate(
      {required this.year, required this.month, required this.day});

  @override
  String toString() => '$year/$month/$day';
}

/// ئێکستێنشن بۆ DateTime
extension KurdishCalendarExtension on DateTime {
  /// گەڕاندنەوەی بەرواری هیجری
  HijriDate get toHijri => KurdishCalendar.gregorianToHijri(this);

  /// گەڕاندنەوەی بەرواری کوردی (ڕۆژهەڵاتی)
  KurdishDate get toKurdishCalendar => KurdishCalendar.gregorianToKurdish(this);

  /// فۆرماتی هیجری بە کوردی
  String toHijriFormat({String pattern = 'dd MMMM yyyy'}) =>
      KurdishCalendar.formatHijri(this, pattern: pattern);

  /// فۆرماتی کوردی (ڕۆژهەڵاتی)
  String toKurdishCalendarFormat({String pattern = 'dd MMMM yyyy'}) =>
      KurdishCalendar.formatKurdish(this, pattern: pattern);
}
