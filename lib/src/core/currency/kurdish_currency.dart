/// Kurdish Currency Formatter
/// فۆرماتکردنی دراو بۆ کوردی

import '../digits/digits.dart';

/// جۆرەکانی دراو
enum KurdishCurrencyType {
  /// دیناری عراقی
  iqd,

  /// دۆلاری ئەمریکی
  usd,

  /// یۆرۆ
  eur,

  /// پاوەندی بەریتانی
  gbp,

  /// تومانی ئێرانی
  irr,

  /// لیرەی تورکی
  trl,
}

class KurdishCurrency {
  KurdishCurrency._();

  static const Map<KurdishCurrencyType, String> _currencyNames = {
    KurdishCurrencyType.iqd: 'دیناری عراقی',
    KurdishCurrencyType.usd: 'دۆلاری ئەمریکی',
    KurdishCurrencyType.eur: 'یۆرۆ',
    KurdishCurrencyType.gbp: 'پاوەندی بەریتانی',
    KurdishCurrencyType.irr: 'تومانی ئێرانی',
    KurdishCurrencyType.trl: 'لیرەی تورکی',
  };

  static const Map<KurdishCurrencyType, String> _currencySymbols = {
    KurdishCurrencyType.iqd: 'د.ع',
    KurdishCurrencyType.usd: '\$',
    KurdishCurrencyType.eur: '€',
    KurdishCurrencyType.gbp: '£',
    KurdishCurrencyType.irr: 'ت',
    KurdishCurrencyType.trl: '₺',
  };

  /// فۆرماتکردنی بڕی پارە بە فاریزە و هێمای دراو
  static String format(
    num amount, {
    KurdishCurrencyType currency = KurdishCurrencyType.iqd,
    bool useKurdishDigits = false,
    bool showName = false,
    int decimalPlaces = 0,
  }) {
    String amountStr;
    if (decimalPlaces > 0) {
      amountStr = amount.toStringAsFixed(decimalPlaces);
    } else {
      amountStr = amount.toInt().toString();
    }

    // Add thousand separators
    final parts = amountStr.split('.');
    final integerPart = parts[0].replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (match) => '${match[1]},',
    );
    final decimalPart = parts.length > 1 ? '.${parts[1]}' : '';
    String formatted = integerPart + decimalPart;

    if (useKurdishDigits) {
      formatted = convertEnToKu(formatted);
    }

    if (showName) {
      return '$formatted ${_currencyNames[currency]}';
    }
    return '$formatted ${_currencySymbols[currency]}';
  }

  /// گەڕاندنەوەی ناوی دراو بە کوردی
  static String getCurrencyName(KurdishCurrencyType currency) {
    return _currencyNames[currency] ?? '';
  }

  /// گەڕاندنەوەی هێمای دراو
  static String getCurrencySymbol(KurdishCurrencyType currency) {
    return _currencySymbols[currency] ?? '';
  }
}

/// ئێکستێنشن بۆ num
extension KurdishCurrencyExtension on num {
  /// فۆرماتکردنی وەک دیناری عراقی
  String toIQD({bool kurdishDigits = false, bool showName = false}) {
    return KurdishCurrency.format(
      this,
      currency: KurdishCurrencyType.iqd,
      useKurdishDigits: kurdishDigits,
      showName: showName,
    );
  }

  /// فۆرماتکردنی وەک دراوی تایبەت
  String toCurrency(
    KurdishCurrencyType currency, {
    bool kurdishDigits = false,
    bool showName = false,
    int decimalPlaces = 0,
  }) {
    return KurdishCurrency.format(
      this,
      currency: currency,
      useKurdishDigits: kurdishDigits,
      showName: showName,
      decimalPlaces: decimalPlaces,
    );
  }
}
