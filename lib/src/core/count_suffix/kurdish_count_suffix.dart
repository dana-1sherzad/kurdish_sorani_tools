/// Kurdish Number Suffix (auto-pluralize based on count)
/// زیادکردنی پاشگری ژمارە بە ئۆتۆماتیکی

import '../pluralization/kurdish_plural.dart';

class KurdishCountSuffix {
  KurdishCountSuffix._();

  /// دانانی ژمارە لەگەڵ وشەی گونجاو (تاک/کۆ)
  /// count(1, "کتێب") => "١ کتێب"
  /// count(2, "کتێب") => "٢ کتێبەکان"
  /// count(0, "کتێب") => "هیچ کتێبێک"
  static String count(int number, String word,
      {bool useKurdishDigits = false}) {
    if (number == 0) {
      return 'هیچ ${word}ێک';
    }
    if (number == 1) {
      return '١ $word';
    }
    final plural = KurdishPlural.pluralDefinite(word);
    final numStr = useKurdishDigits ? _toKurdishDigit(number) : '$number';
    return '$numStr $plural';
  }

  /// فۆرماتی کورت: "٥ کتێب" بێ کۆکردنەوە
  static String countSimple(int number, String word,
      {bool useKurdishDigits = false}) {
    final numStr = useKurdishDigits ? _toKurdishDigit(number) : '$number';
    return '$numStr $word';
  }

  static String _toKurdishDigit(int number) {
    const kuDigits = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    return number
        .toString()
        .split('')
        .map((d) => kuDigits[int.parse(d)])
        .join();
  }
}

/// ئێکستێنشن بۆ int
extension KurdishCountSuffixExtension on int {
  /// ژمارە لەگەڵ وشەی کۆ/تاک
  String withWord(String word, {bool kurdishDigits = false}) =>
      KurdishCountSuffix.count(this, word, useKurdishDigits: kurdishDigits);
}
