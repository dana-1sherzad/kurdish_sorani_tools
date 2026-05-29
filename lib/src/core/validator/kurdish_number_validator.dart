/// Kurdish Number Validator
/// پشکنینی ڕاستی ژمارە بە فۆرماتی کوردی

class KurdishNumberValidator {
  KurdishNumberValidator._();

  /// پشکنین ئایا سترینگەکە ژمارەی کوردییە (١٢٣٤٥٦٧٨٩٠)
  static bool isKurdishNumber(String input) {
    if (input.isEmpty) return false;
    return RegExp(r'^[\u0660-\u0669\u06F0-\u06F9]+$').hasMatch(input);
  }

  /// پشکنین ئایا سترینگەکە ژمارەی ئینگلیزییە
  static bool isEnglishNumber(String input) {
    if (input.isEmpty) return false;
    return RegExp(r'^\d+$').hasMatch(input);
  }

  /// پشکنین ئایا سترینگەکە ژمارەیە (کوردی یان ئینگلیزی)
  static bool isNumber(String input) {
    if (input.isEmpty) return false;
    final cleaned = input.replaceAll(RegExp(r'[,،\s]'), '');
    return RegExp(
            r'^[\d\u0660-\u0669\u06F0-\u06F9]+\.?[\d\u0660-\u0669\u06F0-\u06F9]*$')
        .hasMatch(cleaned);
  }

  /// پشکنین ئایا سترینگەکە ژمارەی تەواوە (بێ خاڵی دەیی)
  static bool isInteger(String input) {
    if (input.isEmpty) return false;
    final cleaned = input.replaceAll(RegExp(r'[,،\s]'), '');
    return RegExp(r'^[\d\u0660-\u0669\u06F0-\u06F9]+$').hasMatch(cleaned);
  }

  /// پشکنین ئایا سترینگەکە ژمارەی دەییە (خاڵی دەیی لەخۆ دەگرێت)
  static bool isDecimal(String input) {
    if (input.isEmpty) return false;
    final cleaned = input.replaceAll(RegExp(r'[,،\s]'), '');
    return RegExp(
            r'^[\d\u0660-\u0669\u06F0-\u06F9]+\.[\d\u0660-\u0669\u06F0-\u06F9]+$')
        .hasMatch(cleaned);
  }

  /// پشکنین ئایا سترینگەکە ژمارەی نەرێیە
  static bool isNegative(String input) {
    if (input.isEmpty) return false;
    return input.startsWith('-') && isNumber(input.substring(1));
  }
}

/// ئێکستێنشن بۆ String
extension KurdishNumberValidatorExtension on String {
  /// پشکنین ئایا ژمارەی کوردییە
  bool get isKurdishNumber => KurdishNumberValidator.isKurdishNumber(this);

  /// پشکنین ئایا ژمارەیە (کوردی یان ئینگلیزی)
  bool get isValidNumber => KurdishNumberValidator.isNumber(this);

  /// پشکنین ئایا ژمارەی تەواوە
  bool get isValidInteger => KurdishNumberValidator.isInteger(this);

  /// پشکنین ئایا ژمارەی دەییە
  bool get isValidDecimal => KurdishNumberValidator.isDecimal(this);
}
