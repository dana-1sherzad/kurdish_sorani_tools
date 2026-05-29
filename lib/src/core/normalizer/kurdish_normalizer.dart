/// Kurdish Text Normalizer
/// نۆرمالکردنی دەقی کوردی - ستانداردکردنی پیتەکان

class KurdishNormalizer {
  KurdishNormalizer._();

  /// نەخشەی گۆڕینی پیتەکانی عەرەبی بۆ کوردی
  static const Map<String, String> _arabicToKurdishMap = {
    'ي': 'ی',
    'ك': 'ک',
    'ة': 'ە',
    'ؤ': 'وو',
    'أ': 'ئ',
    'إ': 'ئ',
    'آ': 'ئا',
    '\u0649': 'ی', // ى (Alef Maksura)
    '\u06CC': 'ی', // ی (Farsi Yeh - already correct but normalize)
  };

  /// نۆرمالکردنی دەق - گۆڕینی پیتەکانی عەرەبی بۆ کوردی
  static String normalize(String input) {
    String result = input;
    _arabicToKurdishMap.forEach((arabic, kurdish) {
      result = result.replaceAll(arabic, kurdish);
    });
    return result;
  }

  /// سڕینەوەی هەرەکات (دایاکریتیکس) لە دەق
  static String removeDiacritics(String input) {
    // Unicode ranges for Arabic diacritics
    return input.replaceAll(RegExp('[\u064B-\u065F\u0670]'), '');
  }

  /// سڕینەوەی تاتوێ (تەشدید) لە دەق
  static String removeTatweel(String input) {
    return input.replaceAll('\u0640', '');
  }

  /// نۆرمالکردنی تەواو - هەموو پرۆسەکان پێکەوە
  static String normalizeAll(String input) {
    String result = normalize(input);
    result = removeDiacritics(result);
    result = removeTatweel(result);
    return result;
  }

  /// ستانداردکردنی بۆشاییەکان (چەند بۆشاییەک دەکات بە یەک)
  static String normalizeSpaces(String input) {
    return input.replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  /// سڕینەوەی Zero-Width characters
  static String removeZeroWidth(String input) {
    return input.replaceAll(RegExp('[\u200B-\u200F\u202A-\u202E\uFEFF]'), '');
  }
}

/// ئێکستێنشن بۆ String
extension KurdishNormalizerExtension on String {
  /// نۆرمالکردنی دەقی کوردی
  String get normalizeKurdish => KurdishNormalizer.normalize(this);

  /// نۆرمالکردنی تەواو
  String get normalizeKurdishAll => KurdishNormalizer.normalizeAll(this);

  /// سڕینەوەی هەرەکات
  String get removeDiacritics => KurdishNormalizer.removeDiacritics(this);

  /// سڕینەوەی تاتوێ
  String get removeTatweel => KurdishNormalizer.removeTatweel(this);
}
