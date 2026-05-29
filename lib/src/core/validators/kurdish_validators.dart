/// Kurdish Form Validators
/// پشکنینی فۆرم بۆ TextFormField بە کوردی

class KurdishValidators {
  KurdishValidators._();

  /// پشکنینی پڕبوونەوە
  static String? Function(String?) required([String? message]) {
    return (value) {
      if (value == null || value.trim().isEmpty) {
        return message ?? 'ئەم خانەیە پێویستە پڕ بکرێتەوە';
      }
      return null;
    };
  }

  /// پشکنینی کەمترین درێژی
  static String? Function(String?) minLength(int min, [String? message]) {
    return (value) {
      if (value == null || value.length < min) {
        return message ?? 'بەلایەنی کەمەوە $min پیت پێویستە';
      }
      return null;
    };
  }

  /// پشکنینی زۆرترین درێژی
  static String? Function(String?) maxLength(int max, [String? message]) {
    return (value) {
      if (value != null && value.length > max) {
        return message ?? 'نابێت لە $max پیت زیاتر بێت';
      }
      return null;
    };
  }

  /// پشکنینی ئیمەیل
  static String? Function(String?) email([String? message]) {
    return (value) {
      if (value == null || value.isEmpty) return null;
      final regex = RegExp(r'^[\w\-.]+@([\w\-]+\.)+[\w\-]{2,4}$');
      if (!regex.hasMatch(value)) {
        return message ?? 'ئیمەیلەکە هەڵەیە';
      }
      return null;
    };
  }

  /// پشکنینی ژمارەی مۆبایلی عراقی
  static String? Function(String?) phone([String? message]) {
    return (value) {
      if (value == null || value.isEmpty) return null;
      final digits = value.replaceAll(RegExp(r'[^\d]'), '');
      if (digits.length != 11 || !digits.startsWith('07')) {
        return message ?? 'ژمارەی مۆبایل هەڵەیە';
      }
      return null;
    };
  }

  /// پشکنینی ژمارە تەنها
  static String? Function(String?) numeric([String? message]) {
    return (value) {
      if (value == null || value.isEmpty) return null;
      if (double.tryParse(value.replaceAll(RegExp(r'[,،]'), '')) == null) {
        return message ?? 'تەنها ژمارە بنووسە';
      }
      return null;
    };
  }

  /// پشکنینی وەکهەوبوونی دوو خانە (وەک وشەی نهێنی)
  static String? Function(String?) match(String other, [String? message]) {
    return (value) {
      if (value != other) {
        return message ?? 'خانەکان وەک یەک نین';
      }
      return null;
    };
  }

  /// پشکنینی کوردی تەنها
  static String? Function(String?) kurdishOnly([String? message]) {
    return (value) {
      if (value == null || value.isEmpty) return null;
      final regex = RegExp(r'^[\u0600-\u06FF\u0750-\u077F\s\d.,،؟!]+$');
      if (!regex.hasMatch(value)) {
        return message ?? 'تەنها کوردی بنووسە';
      }
      return null;
    };
  }
}
