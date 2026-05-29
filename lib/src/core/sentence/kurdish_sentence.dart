/// Kurdish Sentence Utilities
/// ئامرازەکانی ڕستە بۆ کوردی

class KurdishSentence {
  KurdishSentence._();

  /// جیاکردنەوەی ڕستەکان
  static List<String> splitSentences(String text) {
    if (text.isEmpty) return [];
    return text
        .split(RegExp(r'[.!?؟۔]\s*'))
        .where((s) => s.trim().isNotEmpty)
        .toList();
  }

  /// ژمردنی ڕستەکان
  static int sentenceCount(String text) {
    return splitSentences(text).length;
  }

  /// دروستکردنی ڕستەی سەرەتایی (capitalize first letter for mixed text)
  static String sentenceCase(String input) {
    if (input.isEmpty) return input;
    // For Kurdish text, just ensure proper spacing
    return input[0].toUpperCase() + input.substring(1);
  }

  /// زیادکردنی خاڵی کۆتایی ئەگەر نەبوو
  static String ensureEndPunctuation(String input, {String mark = '.'}) {
    if (input.isEmpty) return input;
    final trimmed = input.trimRight();
    if (trimmed.endsWith('.') ||
        trimmed.endsWith('!') ||
        trimmed.endsWith('?') ||
        trimmed.endsWith('؟')) {
      return input;
    }
    return '$trimmed$mark';
  }
}

/// ئێکستێنشن بۆ String
extension KurdishSentenceExtension on String {
  /// جیاکردنەوەی ڕستەکان
  List<String> get kurdishSentences => KurdishSentence.splitSentences(this);

  /// ژمردنی ڕستەکان
  int get kurdishSentenceCount => KurdishSentence.sentenceCount(this);

  /// زیادکردنی خاڵی کۆتایی
  String get ensureEndPunctuation => KurdishSentence.ensureEndPunctuation(this);
}
