/// Kurdish String Extensions
/// ئێکستێنشنی سترینگ بۆ کوردی

class KurdishStringUtils {
  KurdishStringUtils._();

  /// دروستکردنی slug بۆ URL لە دەقی کوردی
  static String toSlug(String input) {
    String result = input.trim().toLowerCase();
    // Replace spaces with hyphens
    result = result.replaceAll(RegExp(r'\s+'), '-');
    // Remove special characters except hyphens and Kurdish/Arabic letters
    result = result.replaceAll(
      RegExp(r'[^\u0600-\u06FF\u0750-\u077F\w\-]'),
      '',
    );
    // Remove multiple consecutive hyphens
    result = result.replaceAll(RegExp(r'-+'), '-');
    // Remove leading/trailing hyphens
    result = result.replaceAll(RegExp(r'^-+|-+$'), '');
    return result;
  }

  /// ژمردنی وشەکان لە دەقی کوردی
  static int wordCount(String input) {
    if (input.trim().isEmpty) return 0;
    return input.trim().split(RegExp(r'\s+')).length;
  }

  /// ژمردنی پیتەکان (بێ بۆشایی)
  static int charCount(String input, {bool includeSpaces = false}) {
    if (includeSpaces) return input.length;
    return input.replaceAll(RegExp(r'\s'), '').length;
  }

  /// بڕینی دەق بە ژمارەی وشەی دیاریکراو
  static String truncateWords(String input, int maxWords,
      {String ellipsis = '...'}) {
    final words = input.trim().split(RegExp(r'\s+'));
    if (words.length <= maxWords) return input;
    return '${words.take(maxWords).join(' ')}$ellipsis';
  }

  /// گەڕاندنەوەی وشەی یەکەم بە پیتی گەورە (بۆ زمانەکانی لاتین لە دەقی تێکەڵ)
  static String capitalize(String input) {
    if (input.isEmpty) return input;
    return input[0].toUpperCase() + input.substring(1);
  }

  /// پێچەوانەکردنی دەقی کوردی
  static String reverse(String input) {
    return String.fromCharCodes(input.runes.toList().reversed);
  }

  /// سڕینەوەی هەموو ژمارەکان لە دەق
  static String removeNumbers(String input) {
    return input.replaceAll(RegExp(r'[\d\u0660-\u0669\u06F0-\u06F9]'), '');
  }

  /// هەڵگرتنی ژمارەکان تەنها لە دەق
  static String extractNumbers(String input) {
    final matches =
        RegExp(r'[\d\u0660-\u0669\u06F0-\u06F9]+').allMatches(input);
    return matches.map((m) => m.group(0)).join(' ');
  }
}

/// ئێکستێنشن بۆ String
extension KurdishStringExtension on String {
  /// دروستکردنی slug بۆ URL
  String get toKurdishSlug => KurdishStringUtils.toSlug(this);

  /// ژمردنی وشەکان
  int get kurdishWordCount => KurdishStringUtils.wordCount(this);

  /// ژمردنی پیتەکان
  int get kurdishCharCount => KurdishStringUtils.charCount(this);

  /// بڕینی دەق بە ژمارەی وشە
  String truncateKurdishWords(int maxWords, {String ellipsis = '...'}) =>
      KurdishStringUtils.truncateWords(this, maxWords, ellipsis: ellipsis);

  /// پێچەوانەکردنی دەق
  String get reverseKurdish => KurdishStringUtils.reverse(this);

  /// سڕینەوەی ژمارەکان
  String get removeNumbers => KurdishStringUtils.removeNumbers(this);

  /// هەڵگرتنی ژمارەکان تەنها
  String get extractNumbers => KurdishStringUtils.extractNumbers(this);
}
