/// Kurdish Sorani Material Localizations
/// وەرگێڕانی وشەکانی سیستەمی فلاتەر - پشتگیری فرە زمانی

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Global language getter - set this from your app
String Function() kurdishLocalizationLanguageGetter = () => 'ckb';

class _L {
  static String _get(String ckb, String en, String ar) {
    switch (kurdishLocalizationLanguageGetter()) {
      case 'en':
        return en;
      case 'ar':
        return ar;
      default:
        return ckb;
    }
  }
}

class KurdishMaterialLocalizations extends DefaultMaterialLocalizations {
  const KurdishMaterialLocalizations();

  @override
  String get cutButtonLabel => _L._get('بڕین', 'Cut', 'قص');
  @override
  String get copyButtonLabel => _L._get('لەبەرگرتنەوە', 'Copy', 'نسخ');
  @override
  String get pasteButtonLabel => _L._get('لکاندن', 'Paste', 'لصق');
  @override
  String get selectAllButtonLabel =>
      _L._get('هەڵبژاردنی هەموو', 'Select All', 'تحديد الكل');
  @override
  String get searchFieldLabel => _L._get('گەڕان', 'Search', 'بحث');
  @override
  String get cancelButtonLabel => _L._get('پاشگەزبوونەوە', 'Cancel', 'إلغاء');
  @override
  String get closeButtonLabel => _L._get('داخستن', 'Close', 'إغلاق');
  @override
  String get continueButtonLabel =>
      _L._get('بەردەوامبوون', 'Continue', 'متابعة');
  @override
  String get deleteButtonTooltip => _L._get('سڕینەوە', 'Delete', 'حذف');
  @override
  String get nextPageTooltip =>
      _L._get('لاپەڕەی دواتر', 'Next page', 'الصفحة التالية');
  @override
  String get previousPageTooltip =>
      _L._get('لاپەڕەی پێشوو', 'Previous page', 'الصفحة السابقة');
  @override
  String get firstPageTooltip =>
      _L._get('لاپەڕەی یەکەم', 'First page', 'الصفحة الأولى');
  @override
  String get lastPageTooltip =>
      _L._get('لاپەڕەی کۆتایی', 'Last page', 'الصفحة الأخيرة');
  @override
  String get openAppDrawerTooltip =>
      _L._get('کردنەوەی مینیوو', 'Open menu', 'فتح القائمة');
  @override
  String get backButtonTooltip => _L._get('گەڕانەوە', 'Back', 'رجوع');
  @override
  String get closeButtonTooltip => _L._get('داخستن', 'Close', 'إغلاق');
  @override
  String get moreButtonTooltip => _L._get('زیاتر', 'More', 'المزيد');
  @override
  String get showMenuTooltip =>
      _L._get('پیشاندانی مینیوو', 'Show menu', 'عرض القائمة');
  @override
  String get okButtonLabel => _L._get('باشە', 'OK', 'موافق');
  @override
  String get saveButtonLabel => _L._get('پاشەکەوتکردن', 'Save', 'حفظ');
  @override
  String get shareButtonLabel => _L._get('هاوبەشکردن', 'Share', 'مشاركة');
  @override
  String get signedInLabel =>
      _L._get('چوونەژوورەوە', 'Signed in', 'تم تسجيل الدخول');
  @override
  String get hideAccountsLabel =>
      _L._get('شاردنەوەی هەژمارەکان', 'Hide accounts', 'إخفاء الحسابات');
  @override
  String get showAccountsLabel =>
      _L._get('پیشاندانی هەژمارەکان', 'Show accounts', 'عرض الحسابات');
  @override
  String get modalBarrierDismissLabel => _L._get('داخستن', 'Dismiss', 'إغلاق');
  @override
  String get drawerLabel =>
      _L._get('مینیووی ناڤبەری', 'Navigation menu', 'قائمة التنقل');
  @override
  String get popupMenuLabel =>
      _L._get('مینیووی دەرکەوتوو', 'Popup menu', 'القائمة المنبثقة');
  @override
  String get dialogLabel => _L._get('دیالۆگ', 'Dialog', 'حوار');
  @override
  String get alertDialogLabel => _L._get('ئاگاداری', 'Alert', 'تنبيه');
  @override
  String get licensesPageTitle => _L._get('مۆڵەتەکان', 'Licenses', 'التراخيص');

  // Date Picker
  @override
  String get datePickerHelpText =>
      _L._get('بەروار هەڵبژێرە', 'Select date', 'اختر التاريخ');
  @override
  String get dateRangePickerHelpText =>
      _L._get('ماوە هەڵبژێرە', 'Select range', 'اختر النطاق');
  @override
  String get dateInputLabel =>
      _L._get('بەروار بنووسە', 'Enter date', 'أدخل التاريخ');
  @override
  String get dateRangeStartLabel =>
      _L._get('بەرواری دەستپێک', 'Start date', 'تاريخ البداية');
  @override
  String get dateRangeEndLabel =>
      _L._get('بەرواری کۆتایی', 'End date', 'تاريخ النهاية');
  @override
  String get invalidDateFormatLabel =>
      _L._get('فۆرماتی بەروار هەڵەیە', 'Invalid format', 'تنسيق غير صالح');
  @override
  String get invalidDateRangeLabel =>
      _L._get('ماوەی بەروار هەڵەیە', 'Invalid range', 'نطاق غير صالح');
  @override
  String get dateOutOfRangeLabel =>
      _L._get('بەروار لە دەرەوەی ماوەیە', 'Out of range', 'خارج النطاق');
  @override
  String get inputDateModeButtonLabel =>
      _L._get('گۆڕین بۆ نووسین', 'Switch to input', 'التبديل إلى الإدخال');
  @override
  String get calendarModeButtonLabel =>
      _L._get('گۆڕین بۆ ڕۆژژمێر', 'Switch to calendar', 'التبديل إلى التقويم');
  @override
  String get unspecifiedDateRange =>
      _L._get('ماوەی بەروار', 'Date range', 'نطاق التاريخ');
  @override
  String get unspecifiedDate => _L._get('بەروار', 'Date', 'التاريخ');

  // Time Picker
  @override
  String get timePickerHourLabel => _L._get('کاتژمێر', 'Hour', 'الساعة');
  @override
  String get timePickerMinuteLabel => _L._get('خولەک', 'Minute', 'الدقيقة');
  @override
  String get timePickerInputHelpText =>
      _L._get('کات بنووسە', 'Enter time', 'أدخل الوقت');
  @override
  String get timePickerDialHelpText =>
      _L._get('کات هەڵبژێرە', 'Select time', 'اختر الوقت');
  @override
  String get inputTimeModeButtonLabel =>
      _L._get('گۆڕین بۆ نووسین', 'Switch to input', 'التبديل إلى الإدخال');
  @override
  String get dialModeButtonLabel =>
      _L._get('گۆڕین بۆ دایەل', 'Switch to dial', 'التبديل إلى القرص');

  // Month/Day formatting
  static const _kuMonths = [
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
    'کانوونی یەکەم'
  ];
  static const _enMonths = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  static const _arMonths = [
    'يناير',
    'فبراير',
    'مارس',
    'أبريل',
    'مايو',
    'يونيو',
    'يوليو',
    'أغسطس',
    'سبتمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر'
  ];

  static const _kuDays = [
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
    'یەکشەممە'
  ];
  static const _enDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  static const _arDays = [
    'الإثنين',
    'الثلاثاء',
    'الأربعاء',
    'الخميس',
    'الجمعة',
    'السبت',
    'الأحد'
  ];

  List<String> get _months {
    switch (kurdishLocalizationLanguageGetter()) {
      case 'en':
        return _enMonths;
      case 'ar':
        return _arMonths;
      default:
        return _kuMonths;
    }
  }

  List<String> get _days {
    switch (kurdishLocalizationLanguageGetter()) {
      case 'en':
        return _enDays;
      case 'ar':
        return _arDays;
      default:
        return _kuDays;
    }
  }

  @override
  List<String> get narrowWeekdays {
    switch (kurdishLocalizationLanguageGetter()) {
      case 'en':
        return const ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
      case 'ar':
        return const ['ح', 'ن', 'ث', 'ر', 'خ', 'ج', 'س'];
      default:
        return const ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'];
    }
  }

  @override
  int get firstDayOfWeekIndex {
    switch (kurdishLocalizationLanguageGetter()) {
      case 'en':
        return 0; // Sunday
      default:
        return 6; // Saturday for Kurdish/Arabic
    }
  }

  @override
  String formatMonthYear(DateTime date) =>
      '${_months[date.month - 1]} ${date.year}';

  @override
  String formatMediumDate(DateTime date) =>
      '${_days[date.weekday - 1]}، ${date.day} ${_months[date.month - 1]}';

  @override
  String formatFullDate(DateTime date) =>
      '${date.day} ${_months[date.month - 1]} ${date.year}';

  @override
  String formatCompactDate(DateTime date) =>
      '${date.year}/${date.month}/${date.day}';
}

// Delegates
class KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const KurdishMaterialLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) => true;
  @override
  Future<MaterialLocalizations> load(Locale locale) =>
      SynchronousFuture<MaterialLocalizations>(
          const KurdishMaterialLocalizations());
  @override
  bool shouldReload(KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishWidgetsLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const KurdishWidgetsLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) => true;
  @override
  Future<WidgetsLocalizations> load(Locale locale) =>
      SynchronousFuture<WidgetsLocalizations>(
          const _KurdishWidgetsLocalizations());
  @override
  bool shouldReload(KurdishWidgetsLocalizationsDelegate old) => false;
}

class _KurdishWidgetsLocalizations extends DefaultWidgetsLocalizations {
  const _KurdishWidgetsLocalizations();
  @override
  TextDirection get textDirection => TextDirection.rtl;
}

class KurdishCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const KurdishCupertinoLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) => true;
  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
          const DefaultCupertinoLocalizations());
  @override
  bool shouldReload(KurdishCupertinoLocalizationsDelegate old) => false;
}

const List<LocalizationsDelegate<dynamic>> kurdishLocalizationsDelegates = [
  KurdishMaterialLocalizationsDelegate(),
  KurdishCupertinoLocalizationsDelegate(),
  KurdishWidgetsLocalizationsDelegate(),
];

const kurdishLocale = Locale('ku', 'IQ');
