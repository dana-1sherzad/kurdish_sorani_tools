/// Kurdish Keyboard Layout Converter
/// گۆڕینی لەیاوتی کیبۆردی ئینگلیزی بۆ کوردی

class KurdishKeyboard {
  KurdishKeyboard._();

  /// نەخشەی گۆڕینی پیتەکانی ئینگلیزی بۆ کوردی
  static const Map<String, String> _enToKuMap = {
    'q': 'ق',
    'w': 'و',
    'e': 'ە',
    'r': 'ر',
    't': 'ت',
    'y': 'ی',
    'u': 'ئ',
    'i': 'ح',
    'o': 'ۆ',
    'p': 'پ',
    'a': 'ا',
    's': 'س',
    'd': 'د',
    'f': 'ف',
    'g': 'گ',
    'h': 'ه',
    'j': 'ژ',
    'k': 'ک',
    'l': 'ل',
    'z': 'ز',
    'x': 'خ',
    'c': 'ج',
    'v': 'ڤ',
    'b': 'ب',
    'n': 'ن',
    'm': 'م',
    'Q': 'ق',
    'W': 'وو',
    'E': 'ێ',
    'R': 'ڕ',
    'T': 'ط',
    'Y': 'ێ',
    'U': 'ء',
    'I': 'ع',
    'O': 'ؤ',
    'P': 'ث',
    'A': 'ئا',
    'S': 'ش',
    'D': 'ذ',
    'F': 'إ',
    'G': 'غ',
    'H': 'ھ',
    'J': 'چ',
    'K': 'ك',
    'L': 'ڵ',
    'Z': 'ض',
    'X': 'ص',
    'C': 'چ',
    'V': 'ظ',
    'B': 'ب',
    'N': 'ن',
    'M': 'م',
  };

  /// گۆڕینی دەقی ئینگلیزی بۆ کوردی (بەپێی لەیاوتی کیبۆرد)
  static String enToKu(String input) {
    final buffer = StringBuffer();
    for (var i = 0; i < input.length; i++) {
      final char = input[i];
      buffer.write(_enToKuMap[char] ?? char);
    }
    return buffer.toString();
  }

  /// گۆڕینی دەقی کوردی بۆ ئینگلیزی (بەپێی لەیاوتی کیبۆرد)
  static String kuToEn(String input) {
    // Build reverse map
    final kuToEnMap = <String, String>{};
    _enToKuMap.forEach((en, ku) {
      if (!kuToEnMap.containsKey(ku)) {
        kuToEnMap[ku] = en;
      }
    });

    final buffer = StringBuffer();
    for (var i = 0; i < input.length; i++) {
      final char = input[i];
      buffer.write(kuToEnMap[char] ?? char);
    }
    return buffer.toString();
  }
}

/// ئێکستێنشن بۆ String
extension KurdishKeyboardExtension on String {
  /// گۆڕینی لەیاوتی ئینگلیزی بۆ کوردی
  String get toKurdishKeyboard => KurdishKeyboard.enToKu(this);

  /// گۆڕینی لەیاوتی کوردی بۆ ئینگلیزی
  String get toEnglishKeyboard => KurdishKeyboard.kuToEn(this);
}
