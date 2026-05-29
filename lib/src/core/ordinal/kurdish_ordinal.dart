/// Kurdish Ordinal Suffix
/// زیادکردنی پاشگری ڕێزبەندی بۆ ژمارەکان (یەکەم، دووەم، سێیەم...)

class KurdishOrdinal {
  KurdishOrdinal._();

  /// زیادکردنی پاشگری ڕێزبەندی بۆ وشە
  static String addSuffix(String word) {
    if (word.isEmpty) return word;

    final lastChar = word[word.length - 1];

    // ئەگەر بە دەنگدار تەواو بوو
    if ('اەێۆوی'.contains(lastChar)) {
      return '${word}یەم';
    }

    // ئەگەر بە "سێ" تەواو بوو
    if (word.endsWith('سێ')) {
      return '${word.substring(0, word.length - 1)}ێیەم';
    }

    return '${word}ەم';
  }

  /// گۆڕینی ژمارە بۆ ڕێزبەندی
  /// 1 => "یەکەم", 2 => "دووەم", 3 => "سێیەم"
  static String fromNumber(int number) {
    final Map<int, String> ordinals = {
      1: 'یەکەم',
      2: 'دووەم',
      3: 'سێیەم',
      4: 'چوارەم',
      5: 'پێنجەم',
      6: 'شەشەم',
      7: 'حەوتەم',
      8: 'هەشتەم',
      9: 'نۆیەم',
      10: 'دەیەم',
      11: 'یازدەیەم',
      12: 'دوازدەیەم',
      13: 'سێزدەیەم',
      14: 'چواردەیەم',
      15: 'پازدەیەم',
      16: 'شازدەیەم',
      17: 'حەڤدەیەم',
      18: 'هەژدەیەم',
      19: 'نۆزدەیەم',
      20: 'بیستەم',
      30: 'سییەم',
      40: 'چلەم',
      50: 'پەنجایەم',
      60: 'شەستەم',
      70: 'حەفتایەم',
      80: 'هەشتایەم',
      90: 'نەوەدەم',
      100: 'سەدەم',
      1000: 'هەزارەم',
    };

    if (ordinals.containsKey(number)) {
      return ordinals[number]!;
    }

    // بۆ ژمارەکانی تر
    return '${number}ەم';
  }
}

/// ئێکستێنشن بۆ int
extension KurdishOrdinalIntExtension on int {
  /// گۆڕینی ژمارە بۆ ڕێزبەندی کوردی
  String get toKurdishOrdinal => KurdishOrdinal.fromNumber(this);
}

/// ئێکستێنشن بۆ String
extension KurdishOrdinalStringExtension on String {
  /// زیادکردنی پاشگری ڕێزبەندی
  String get withOrdinalSuffix => KurdishOrdinal.addSuffix(this);
}
