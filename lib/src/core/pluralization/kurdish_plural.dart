/// Kurdish Pluralization
/// کۆکردنەوەی وشەکان بە کوردی

class KurdishPlural {
  KurdishPlural._();

  /// پاشگرەکانی کۆ بە کوردی
  static const String _pluralSuffix = 'ەکان';
  static const String _indefinitePluralSuffix = 'ان';

  /// کۆکردنەوەی وشە بە پاشگری "ەکان" (دیاری)
  /// مانا: ئەو شتانەی دیاریکراون
  static String pluralDefinite(String word) {
    if (word.isEmpty) return word;

    // ئەگەر وشەکە بە دەنگدار تەواو بوو
    if (_endsWithVowel(word)) {
      return '${word}کان';
    }
    return '$word$_pluralSuffix';
  }

  /// کۆکردنەوەی وشە بە پاشگری "ان" (نادیاری)
  static String pluralIndefinite(String word) {
    if (word.isEmpty) return word;

    if (_endsWithVowel(word)) {
      return '${word}یان';
    }
    return '$word$_indefinitePluralSuffix';
  }

  /// پشکنین ئایا وشەکە بە دەنگدار تەواو دەبێت
  static bool _endsWithVowel(String word) {
    if (word.isEmpty) return false;
    final lastChar = word[word.length - 1];
    return 'اەێۆوی'.contains(lastChar);
  }

  /// سڕینەوەی پاشگری کۆ و گەڕاندنەوەی تاک
  static String singular(String word) {
    if (word.endsWith('ەکان')) {
      return word.substring(0, word.length - 4);
    }
    if (word.endsWith('کان')) {
      return word.substring(0, word.length - 3);
    }
    if (word.endsWith('یان')) {
      return word.substring(0, word.length - 3);
    }
    if (word.endsWith('ان')) {
      return word.substring(0, word.length - 2);
    }
    return word;
  }

  /// پشکنین ئایا وشەکە کۆیە
  static bool isPlural(String word) {
    return word.endsWith('ەکان') ||
        word.endsWith('کان') ||
        word.endsWith('یان') ||
        word.endsWith('ان');
  }

  /// دانانی ژمارە لەگەڵ وشەی کۆ/تاک
  /// بۆ نموونە: count(3, "کتێب") => "٣ کتێبەکان"
  static String count(int number, String word, {bool definite = true}) {
    if (number == 1) {
      return '١ $word';
    }
    final plural = definite ? pluralDefinite(word) : pluralIndefinite(word);
    return '$number $plural';
  }
}

/// ئێکستێنشن بۆ String
extension KurdishPluralExtension on String {
  /// کۆکردنەوەی وشە (دیاری)
  String get toPlural => KurdishPlural.pluralDefinite(this);

  /// کۆکردنەوەی وشە (نادیاری)
  String get toPluralIndefinite => KurdishPlural.pluralIndefinite(this);

  /// گەڕاندنەوەی تاک
  String get toSingular => KurdishPlural.singular(this);

  /// پشکنین ئایا کۆیە
  bool get isPlural => KurdishPlural.isPlural(this);
}
