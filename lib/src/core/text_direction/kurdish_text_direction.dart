/// Kurdish Text Direction Helper
/// یاریدەدەری ئاڕاستەی دەق - دیاریکردنی RTL/LTR بە ئۆتۆماتیکی

import 'package:flutter/material.dart';

class KurdishTextDirection {
  KurdishTextDirection._();

  /// RegExp بۆ پیتەکانی RTL
  static final RegExp _rtlRegExp = RegExp(
    '[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF]',
  );

  /// دیاریکردنی ئاڕاستەی دەق
  static TextDirection detectDirection(String text) {
    if (text.isEmpty) return TextDirection.ltr;

    // Find first meaningful character
    for (var i = 0; i < text.length; i++) {
      final char = text[i];
      if (_rtlRegExp.hasMatch(char)) {
        return TextDirection.rtl;
      }
      if (RegExp('[a-zA-Z]').hasMatch(char)) {
        return TextDirection.ltr;
      }
    }
    return TextDirection.ltr;
  }

  /// پشکنین ئایا دەقەکە RTL ە
  static bool isRTL(String text) {
    return detectDirection(text) == TextDirection.rtl;
  }

  /// پشکنین ئایا دەقەکە LTR ە
  static bool isLTR(String text) {
    return detectDirection(text) == TextDirection.ltr;
  }
}

/// ویدجێتی ئۆتۆماتیکی ئاڕاستەی دەق
class KurdishAutoDirection extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const KurdishAutoDirection({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final direction = KurdishTextDirection.detectDirection(text);
    return Directionality(
      textDirection: direction,
      child: Text(
        text,
        style: style,
        textAlign: textAlign ??
            (direction == TextDirection.rtl ? TextAlign.right : TextAlign.left),
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }
}

/// ئێکستێنشن بۆ String
extension KurdishTextDirectionExtension on String {
  /// دیاریکردنی ئاڕاستەی دەق
  TextDirection get textDirection => KurdishTextDirection.detectDirection(this);

  /// پشکنین ئایا RTL ە
  bool get isRTL => KurdishTextDirection.isRTL(this);

  /// پشکنین ئایا LTR ە
  bool get isLTR => KurdishTextDirection.isLTR(this);
}
