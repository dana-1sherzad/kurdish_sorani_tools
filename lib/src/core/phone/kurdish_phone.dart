/// Kurdish Phone Number Formatter
/// فۆرماتکردنی ژمارەی مۆبایل بۆ عراق/هەرێمی کوردستان

import '../digits/digits.dart';

class KurdishPhone {
  KurdishPhone._();

  /// پێشگرەکانی ئۆپەرەیتەرەکانی عراق (بەپێی سێ ژمارەی یەکەم)
  static const Map<String, String> _operatorsByPrefix = {
    '075': 'کۆڕەک',
    '077': 'ئاسیاسێل',
    '078': 'زەین',
    '079': 'فاستلینک',
  };

  /// نۆرمالکردنی ژمارە (سڕینەوەی +964 و 00964)
  static String _normalize(String phoneNumber) {
    String digits = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    if (digits.startsWith('00964')) {
      digits = '0${digits.substring(5)}';
    } else if (digits.startsWith('964')) {
      digits = '0${digits.substring(3)}';
    }

    return digits;
  }

  /// فۆرماتکردنی ژمارەی مۆبایل
  /// 07501234567 => "0750 123 4567"
  static String format(String phoneNumber, {bool useKurdishDigits = false}) {
    final digits = _normalize(phoneNumber);

    // Validate length
    if (digits.length != 11) {
      return phoneNumber; // Return original if invalid
    }

    // Format: 0750 123 4567
    final formatted =
        '${digits.substring(0, 4)} ${digits.substring(4, 7)} ${digits.substring(7)}';

    if (useKurdishDigits) {
      return convertEnToKu(formatted);
    }
    return formatted;
  }

  /// پشکنینی ڕاستی ژمارەی مۆبایلی عراقی
  static bool isValid(String phoneNumber) {
    final digits = _normalize(phoneNumber);

    if (digits.length != 11) return false;
    if (!digits.startsWith('07')) return false;

    return true;
  }

  /// ناسینەوەی ئۆپەرەیتەر
  static String? getOperator(String phoneNumber) {
    final digits = _normalize(phoneNumber);

    if (digits.length < 4) return null;

    // Check first 3 digits (e.g., 075, 077, 078, 079)
    final prefix3 = digits.substring(0, 3);
    return _operatorsByPrefix[prefix3];
  }

  /// گۆڕین بۆ فۆرماتی نێودەوڵەتی
  static String toInternational(String phoneNumber) {
    String digits = _normalize(phoneNumber);

    if (digits.startsWith('0')) {
      digits = '964${digits.substring(1)}';
    }

    return '+$digits';
  }
}

/// ئێکستێنشن بۆ String
extension KurdishPhoneExtension on String {
  /// فۆرماتکردنی ژمارەی مۆبایل
  String get formatPhone => KurdishPhone.format(this);

  /// فۆرماتکردنی بە ژمارەی کوردی
  String get formatPhoneKurdish =>
      KurdishPhone.format(this, useKurdishDigits: true);

  /// پشکنینی ڕاستی ژمارە
  bool get isValidIraqiPhone => KurdishPhone.isValid(this);

  /// ناسینەوەی ئۆپەرەیتەر
  String? get phoneOperator => KurdishPhone.getOperator(this);

  /// گۆڕین بۆ فۆرماتی نێودەوڵەتی
  String get toInternationalPhone => KurdishPhone.toInternational(this);
}
