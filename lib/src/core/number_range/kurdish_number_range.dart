/// Kurdish Number Range to Words
/// گۆڕینی ڕیزی ژمارە بۆ وشەی کوردی

import '../../number_to_word/number_to_word.dart';

class KurdishNumberRange {
  KurdishNumberRange._();

  /// گۆڕینی ڕیزی ژمارە بۆ وشەی کوردی
  /// بۆ نموونە: "1-5" => "یەک تا پێنج"
  static String toWords(int from, int to, {String separator = ' تا '}) {
    final fromWord = from.toKurdishString();
    final toWord = to.toKurdishString();
    return '$fromWord$separator$toWord';
  }

  /// گۆڕینی سترینگی ڕیز بۆ وشەی کوردی
  /// بۆ نموونە: "1-5" => "یەک تا پێنج"
  static String? parseAndConvert(String range, {String separator = ' تا '}) {
    final parts = range.split(RegExp(r'[-–—]'));
    if (parts.length != 2) return null;

    final from = int.tryParse(parts[0].trim());
    final to = int.tryParse(parts[1].trim());

    if (from == null || to == null) return null;

    return toWords(from, to, separator: separator);
  }
}

/// ئێکستێنشن بۆ String
extension KurdishNumberRangeExtension on String {
  /// گۆڕینی ڕیزی ژمارە بۆ وشەی کوردی
  String? get toKurdishRange => KurdishNumberRange.parseAndConvert(this);
}
