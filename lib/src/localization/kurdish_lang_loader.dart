/// Kurdish Language JSON Loader
/// بارکردنی زمان لە فایلی JSON

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'kurdish_multi_lang.dart';

class KurdishLangLoader {
  KurdishLangLoader._();

  /// بارکردنی زمان لە فایلی JSON لە assets
  /// path: ڕێگای فایل وەک 'assets/lang/ckb.json'
  static Future<KurdishTranslation> loadFromAsset({
    required String path,
    required String languageCode,
    required String languageName,
    required TextDirection textDirection,
  }) async {
    final jsonString = await rootBundle.loadString(path);
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    final translations = jsonMap.map(
      (key, value) => MapEntry(key, value.toString()),
    );

    return KurdishTranslation(
      languageCode: languageCode,
      languageName: languageName,
      textDirection: textDirection,
      translations: translations,
    );
  }

  /// بارکردنی چەند زمانێک لە assets بە یەکجار
  static Future<List<KurdishTranslation>> loadMultiple(
    List<KurdishLangConfig> configs,
  ) async {
    final results = <KurdishTranslation>[];
    for (final config in configs) {
      final translation = await loadFromAsset(
        path: config.path,
        languageCode: config.languageCode,
        languageName: config.languageName,
        textDirection: config.textDirection,
      );
      results.add(translation);
    }
    return results;
  }

  /// بارکردنی زمان لە سترینگی JSON (بۆ کاتێک لە ئینتەرنێت دەهێنیتەوە)
  static KurdishTranslation loadFromString({
    required String jsonString,
    required String languageCode,
    required String languageName,
    required TextDirection textDirection,
  }) {
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    final translations = jsonMap.map(
      (key, value) => MapEntry(key, value.toString()),
    );

    return KurdishTranslation(
      languageCode: languageCode,
      languageName: languageName,
      textDirection: textDirection,
      translations: translations,
    );
  }
}

/// کۆنفیگی بارکردنی زمان
class KurdishLangConfig {
  final String path;
  final String languageCode;
  final String languageName;
  final TextDirection textDirection;

  const KurdishLangConfig({
    required this.path,
    required this.languageCode,
    required this.languageName,
    required this.textDirection,
  });
}

/// کۆنفیگە ئامادەکان بۆ زمانەکانی پاکێج
const defaultLangConfigs = [
  KurdishLangConfig(
    path: 'assets/lang/ckb.json',
    languageCode: 'ckb',
    languageName: 'کوردی سۆرانی',
    textDirection: TextDirection.rtl,
  ),
  KurdishLangConfig(
    path: 'assets/lang/en.json',
    languageCode: 'en',
    languageName: 'English',
    textDirection: TextDirection.ltr,
  ),
  KurdishLangConfig(
    path: 'assets/lang/ar.json',
    languageCode: 'ar',
    languageName: 'العربية',
    textDirection: TextDirection.rtl,
  ),
];
