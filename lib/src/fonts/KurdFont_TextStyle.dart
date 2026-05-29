import 'package:flutter/material.dart';

class KurdishTextStyle extends TextStyle {
  /// <p style="color:#77b4ff;font-size:16;font-weight: bold;">---- EN ----</p>

  ///### Use ArabicFont  then select type of font
  /// <p style="color:red;font-size:13;font-weight: bold;">EX: ArabicFont.dubai</p>

  /// <p style="color:#77b4ff;font-size:16;font-weight: bold;">---- AR ----</p>

  ///### استخدم :

  ///### ArabicFont
  ///
  /// ### وبعدها اختر نوع الخط الذي تريده
  final String KurdFont;

  const KurdishTextStyle({
    required this.KurdFont,
    super.inherit,
    super.color,
    super.backgroundColor,
    super.fontSize,
    super.fontWeight,
    super.fontStyle,
    super.letterSpacing,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.leadingDistribution,
    super.locale,
    super.foreground,
    super.background,
    super.shadows,
    super.fontFeatures,
    super.fontVariations,
    super.decoration,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel,
    super.overflow,
  }) : super(fontFamily: KurdFont, package: 'kurdish_sorani_tools');
}
