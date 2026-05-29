/// Kurdish Multi-Language Support
/// پشتگیری فرە زمانی - بەکارهێنەر دەتوانێت زمانی خۆی زیاد بکات

import 'package:flutter/material.dart';

/// مۆدێلی وەرگێڕان بۆ هەر زمانێک
class KurdishTranslation {
  final String languageCode;
  final String languageName;
  final TextDirection textDirection;
  final Map<String, String> translations;

  const KurdishTranslation({
    required this.languageCode,
    required this.languageName,
    required this.textDirection,
    required this.translations,
  });

  /// گەڕاندنەوەی وەرگێڕان بەپێی کلیل
  String translate(String key, {String? fallback}) {
    return translations[key] ?? fallback ?? key;
  }
}

/// وەرگێڕانی ئامادەی کوردی سۆرانی
const kurdishSoraniTranslation = KurdishTranslation(
  languageCode: 'ckb',
  languageName: 'کوردی سۆرانی',
  textDirection: TextDirection.rtl,
  translations: {
    'cut': 'بڕین',
    'copy': 'لەبەرگرتنەوە',
    'paste': 'لکاندن',
    'select_all': 'هەڵبژاردنی هەموو',
    'share': 'هاوبەشکردن',
    'delete': 'سڕینەوە',
    'cancel': 'پاشگەزبوونەوە',
    'ok': 'باشە',
    'save': 'پاشەکەوتکردن',
    'close': 'داخستن',
    'search': 'گەڕان',
    'back': 'گەڕانەوە',
    'next': 'دواتر',
    'previous': 'پێشوو',
    'loading': 'چاوەڕوان بە...',
    'error': 'هەڵە',
    'success': 'سەرکەوتوو',
    'warning': 'ئاگاداری',
    'confirm': 'دڵنیابوونەوە',
    'yes': 'بەڵێ',
    'no': 'نەخێر',
    'retry': 'هەوڵدانەوە',
    'settings': 'ڕێکخستنەکان',
    'home': 'ماڵەوە',
    'profile': 'پڕۆفایل',
    'logout': 'چوونەدەرەوە',
    'login': 'چوونەژوورەوە',
    'register': 'تۆمارکردن',
    'email': 'ئیمەیل',
    'password': 'وشەی نهێنی',
    'username': 'ناوی بەکارهێنەر',
    'phone': 'ژمارەی مۆبایل',
    'name': 'ناو',
    'address': 'ناونیشان',
    'date': 'بەروار',
    'time': 'کات',
    'today': 'ئەمڕۆ',
    'yesterday': 'دوێنێ',
    'tomorrow': 'سبەینێ',
    'sunday': 'یەکشەممە',
    'monday': 'دووشەممە',
    'tuesday': 'سێشەممە',
    'wednesday': 'چوارشەممە',
    'thursday': 'پێنجشەممە',
    'friday': 'هەینی',
    'saturday': 'شەممە',
  },
);

/// وەرگێڕانی ئامادەی عەرەبی
const arabicTranslation = KurdishTranslation(
  languageCode: 'ar',
  languageName: 'العربية',
  textDirection: TextDirection.rtl,
  translations: {
    'cut': 'قص',
    'copy': 'نسخ',
    'paste': 'لصق',
    'select_all': 'تحديد الكل',
    'share': 'مشاركة',
    'delete': 'حذف',
    'cancel': 'إلغاء',
    'ok': 'موافق',
    'save': 'حفظ',
    'close': 'إغلاق',
    'search': 'بحث',
    'back': 'رجوع',
    'next': 'التالي',
    'previous': 'السابق',
    'loading': 'جاري التحميل...',
    'error': 'خطأ',
    'success': 'نجاح',
    'warning': 'تحذير',
    'confirm': 'تأكيد',
    'yes': 'نعم',
    'no': 'لا',
    'retry': 'إعادة المحاولة',
    'settings': 'الإعدادات',
    'home': 'الرئيسية',
    'profile': 'الملف الشخصي',
    'logout': 'تسجيل الخروج',
    'login': 'تسجيل الدخول',
    'register': 'تسجيل',
    'email': 'البريد الإلكتروني',
    'password': 'كلمة المرور',
    'username': 'اسم المستخدم',
    'phone': 'رقم الهاتف',
    'name': 'الاسم',
    'address': 'العنوان',
    'date': 'التاريخ',
    'time': 'الوقت',
    'today': 'اليوم',
    'yesterday': 'أمس',
    'tomorrow': 'غداً',
    'sunday': 'الأحد',
    'monday': 'الإثنين',
    'tuesday': 'الثلاثاء',
    'wednesday': 'الأربعاء',
    'thursday': 'الخميس',
    'friday': 'الجمعة',
    'saturday': 'السبت',
  },
);

/// وەرگێڕانی ئامادەی ئینگلیزی
const englishTranslation = KurdishTranslation(
  languageCode: 'en',
  languageName: 'English',
  textDirection: TextDirection.ltr,
  translations: {
    'cut': 'Cut',
    'copy': 'Copy',
    'paste': 'Paste',
    'select_all': 'Select All',
    'share': 'Share',
    'delete': 'Delete',
    'cancel': 'Cancel',
    'ok': 'OK',
    'save': 'Save',
    'close': 'Close',
    'search': 'Search',
    'back': 'Back',
    'next': 'Next',
    'previous': 'Previous',
    'loading': 'Loading...',
    'error': 'Error',
    'success': 'Success',
    'warning': 'Warning',
    'confirm': 'Confirm',
    'yes': 'Yes',
    'no': 'No',
    'retry': 'Retry',
    'settings': 'Settings',
    'home': 'Home',
    'profile': 'Profile',
    'logout': 'Logout',
    'login': 'Login',
    'register': 'Register',
    'email': 'Email',
    'password': 'Password',
    'username': 'Username',
    'phone': 'Phone',
    'name': 'Name',
    'address': 'Address',
    'date': 'Date',
    'time': 'Time',
    'today': 'Today',
    'yesterday': 'Yesterday',
    'tomorrow': 'Tomorrow',
    'sunday': 'Sunday',
    'monday': 'Monday',
    'tuesday': 'Tuesday',
    'wednesday': 'Wednesday',
    'thursday': 'Thursday',
    'friday': 'Friday',
    'saturday': 'Saturday',
  },
);

/// بەڕێوەبەری فرە زمانی
/// بەکارهێنەر دەتوانێت زمانی تایبەتی خۆی زیاد بکات
class KurdishLangManager extends ChangeNotifier {
  final Map<String, KurdishTranslation> _languages = {};
  late String _currentLanguage;

  KurdishLangManager({String defaultLanguage = 'ckb'})
      : _currentLanguage = defaultLanguage {
    // زیادکردنی زمانە ئامادەکان
    addLanguage(kurdishSoraniTranslation);
    addLanguage(arabicTranslation);
    addLanguage(englishTranslation);
  }

  /// زمانی ئێستا
  String get currentLanguage => _currentLanguage;

  /// وەرگێڕانی ئێستا
  KurdishTranslation get current => _languages[_currentLanguage]!;

  /// ئاڕاستەی دەقی ئێستا
  TextDirection get textDirection => current.textDirection;

  /// لیستی زمانە بەردەستەکان
  List<String> get availableLanguages => _languages.keys.toList();

  /// لیستی ناوی زمانەکان
  Map<String, String> get languageNames =>
      _languages.map((key, value) => MapEntry(key, value.languageName));

  /// زیادکردنی زمانی نوێ
  void addLanguage(KurdishTranslation translation) {
    _languages[translation.languageCode] = translation;
  }

  /// گۆڕینی زمان
  void setLanguage(String languageCode) {
    if (_languages.containsKey(languageCode)) {
      _currentLanguage = languageCode;
      notifyListeners();
    }
  }

  /// وەرگێڕانی کلیل
  String tr(String key, {String? fallback}) {
    return current.translate(key, fallback: fallback);
  }

  /// گەڕاندنەوەی وەرگێڕان بۆ زمانێکی دیاریکراو
  String trFor(String languageCode, String key, {String? fallback}) {
    final lang = _languages[languageCode];
    if (lang == null) return fallback ?? key;
    return lang.translate(key, fallback: fallback);
  }
}

/// ویدجێتی InheritedWidget بۆ دابینکردنی وەرگێڕان لە تەواوی ئەپەکە
class KurdishLangProvider extends InheritedNotifier<KurdishLangManager> {
  const KurdishLangProvider({
    super.key,
    required KurdishLangManager manager,
    required super.child,
  }) : super(notifier: manager);

  static KurdishLangManager of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<KurdishLangProvider>();
    return provider!.notifier!;
  }

  /// وەرگێڕانی کورت
  static String tr(BuildContext context, String key, {String? fallback}) {
    return of(context).tr(key, fallback: fallback);
  }
}

/// ویدجێتی ئۆتۆماتیکی ئاڕاستە بەپێی زمانی هەڵبژێردراو
class KurdishDirectionality extends StatelessWidget {
  final Widget child;

  const KurdishDirectionality({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final manager = KurdishLangProvider.of(context);
    return Directionality(
      textDirection: manager.textDirection,
      child: child,
    );
  }
}
