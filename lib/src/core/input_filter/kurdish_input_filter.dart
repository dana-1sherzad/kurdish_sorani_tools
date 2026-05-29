/// Kurdish Text Input Filter
/// فلتەری ئینپووت بۆ ڕێگەدان بە پیتی کوردی تەنها

import 'package:flutter/services.dart';

/// فلتەری ئینپووت کە تەنها ڕێگە بە پیتی کوردی/عەرەبی دەدات
class KurdishOnlyInputFilter extends TextInputFormatter {
  /// ئایا ژمارەش ڕێگەپێدراوە؟
  final bool allowNumbers;

  /// ئایا بۆشایی ڕێگەپێدراوە؟
  final bool allowSpaces;

  /// ئایا هێماکانی خاڵبەندی ڕێگەپێدراون؟
  final bool allowPunctuation;

  const KurdishOnlyInputFilter({
    this.allowNumbers = false,
    this.allowSpaces = true,
    this.allowPunctuation = true,
  });

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String pattern =
        '\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF';

    if (allowNumbers) {
      pattern += '0-9\u0660-\u0669\u06F0-\u06F9';
    }
    if (allowSpaces) {
      pattern += '\\s';
    }
    if (allowPunctuation) {
      pattern += '.،؟!؛:«»\\-()';
    }

    final regex = RegExp('^[$pattern]*\$');

    if (regex.hasMatch(newValue.text)) {
      return newValue;
    }
    return oldValue;
  }
}

/// فلتەری ئینپووت کە تەنها ڕێگە بە ژمارەی کوردی دەدات
class KurdishDigitsOnlyInputFilter extends TextInputFormatter {
  const KurdishDigitsOnlyInputFilter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final regex = RegExp(r'^[\u0660-\u0669\u06F0-\u06F9]*$');

    if (regex.hasMatch(newValue.text)) {
      return newValue;
    }
    return oldValue;
  }
}

/// فلتەری ئینپووت کە ڕێگە بە هەموو شتێک دەدات جگە لە ئینگلیزی
class NoEnglishInputFilter extends TextInputFormatter {
  const NoEnglishInputFilter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final regex = RegExp(r'[a-zA-Z]');

    if (regex.hasMatch(newValue.text)) {
      return oldValue;
    }
    return newValue;
  }
}
