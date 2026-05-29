/// Kurdish Color Names
/// ناوی ڕەنگەکان بە کوردی

import 'package:flutter/material.dart';

class KurdishColor {
  KurdishColor._();

  static const Map<int, String> _colorNames = {
    0xFFFF0000: 'سوور',
    0xFF00FF00: 'سەوز',
    0xFF0000FF: 'شین',
    0xFFFFFF00: 'زەرد',
    0xFFFF8000: 'پرتەقاڵی',
    0xFF800080: 'مۆر',
    0xFFFFFFFF: 'سپی',
    0xFF000000: 'ڕەش',
    0xFF808080: 'خۆڵەمێشی',
    0xFFA52A2A: 'قاوەیی',
    0xFFFFC0CB: 'پەمبەیی',
    0xFF00FFFF: 'ئاسمانی',
    0xFFC0C0C0: 'زیوی',
    0xFFFFD700: 'ئاڵتوونی',
    0xFF4B0082: 'نیلی',
    0xFFEE82EE: 'بەنەوشەیی',
  };

  /// ناوەکانی ڕەنگ بە کوردی
  static const Map<String, Color> namedColors = {
    'سوور': Color(0xFFFF0000),
    'سەوز': Color(0xFF00FF00),
    'شین': Color(0xFF0000FF),
    'زەرد': Color(0xFFFFFF00),
    'پرتەقاڵی': Color(0xFFFF8000),
    'مۆر': Color(0xFF800080),
    'سپی': Color(0xFFFFFFFF),
    'ڕەش': Color(0xFF000000),
    'خۆڵەمێشی': Color(0xFF808080),
    'قاوەیی': Color(0xFFA52A2A),
    'پەمبەیی': Color(0xFFFFC0CB),
    'ئاسمانی': Color(0xFF00FFFF),
    'زیوی': Color(0xFFC0C0C0),
    'ئاڵتوونی': Color(0xFFFFD700),
    'نیلی': Color(0xFF4B0082),
    'بەنەوشەیی': Color(0xFFEE82EE),
  };

  /// گەڕاندنەوەی ناوی ڕەنگ بە کوردی
  static String getName(Color color) {
    return _colorNames[color.value] ?? 'نەناسراو';
  }

  /// گەڕاندنەوەی ڕەنگ لە ناوی کوردی
  static Color? fromName(String name) {
    return namedColors[name];
  }

  /// گەڕاندنەوەی هەموو ناوەکانی ڕەنگ
  static List<String> get allNames => namedColors.keys.toList();

  /// نزیکترین ڕەنگ بدۆزەرەوە و ناوی کوردی بگەڕێنەوە
  static String getClosestName(Color color) {
    int minDistance = 999999;
    String closestName = 'نەناسراو';

    for (final entry in namedColors.entries) {
      final c = entry.value;
      final distance = _colorDistance(color, c);
      if (distance < minDistance) {
        minDistance = distance;
        closestName = entry.key;
      }
    }

    return closestName;
  }

  static int _colorDistance(Color a, Color b) {
    final dr = a.red - b.red;
    final dg = a.green - b.green;
    final db = a.blue - b.blue;
    return dr * dr + dg * dg + db * db;
  }
}

/// ئێکستێنشن بۆ Color
extension KurdishColorExtension on Color {
  /// گەڕاندنەوەی ناوی ڕەنگ بە کوردی
  String get kurdishName => KurdishColor.getName(this);

  /// گەڕاندنەوەی نزیکترین ناوی ڕەنگ بە کوردی
  String get closestKurdishName => KurdishColor.getClosestName(this);
}
