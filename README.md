# Kurdish Sorani Tools

A comprehensive Flutter/Dart package for the Kurdish Sorani language with 25+ features including number conversion, date/time formatting, calendar systems, localization, and more.

[![pub package](https://img.shields.io/pub/v/kurdish_sorani_tools.svg)](https://pub.dev/packages/kurdish_sorani_tools)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

---

## کوردی سۆرانی

پاکێجێکی تەواوی Flutter/Dart کە ئامرازی جیاواز بۆ زمانی کوردی سۆرانی لەخۆ دەگرێت، وەک گۆڕینی ژمارە، فۆرماتکردنی ژمارە، ناسینەوەی دەق، چاککردنی بەستەر، و فۆنتی کوردی.

### تایبەتمەندییەکان

- **گۆڕینی ژمارە بۆ وشە** — گۆڕینی ژمارە بۆ نووسینی کوردی سۆرانی
- **گۆڕینی ژمارە** — گۆڕینی نێوان ژمارەی ئینگلیزی (ڕۆژئاوایی) و کوردی (عەرەبی ڕۆژهەڵاتی)
- **فۆرماتی فاریزە** — زیادکردن/سڕینەوەی جیاکەرەوەی هەزاران لە ژمارەکان
- **وشە بۆ ژمارە** — گۆڕینەوەی وشەی کوردی بۆ ژمارە
- **ناسینەوەی دەقی کوردی** — پشکنینی ئەوەی دەقێک کوردییە یان نا
- **چاککردنی بەستەر** — چاککردنی ئۆتۆماتیکی بۆشایی لە بەستەرەکان
- **پاشگری ڕێزبەندی** — سڕینەوەی پاشگری ڕێزبەندی لە ژمارەکانی کوردی
- **فۆنتی کوردی** — فۆنتی ڕابەر بە شێوەی ئامادە لەگەڵ TextStyle و Theme
- **فۆرماتکەری ئینپووت** — TextInputFormatter بۆ فۆرماتکردنی ژمارە لە TextField
- **بەروار و کاتی کوردی** — فۆرماتکردنی بەروار بە ناوی ڕۆژ و مانگی کوردی *(نوێ)*
- **گۆڕینی لەیاوتی کیبۆرد** — گۆڕینی دەقی ئینگلیزی بۆ کوردی بەپێی لەیاوتی کیبۆرد *(نوێ)*
- **نۆرمالکردنی دەق** — ستانداردکردنی پیتەکانی عەرەبی بۆ کوردی و سڕینەوەی هەرەکات *(نوێ)*
- **فۆرماتی دراو** — فۆرماتکردنی پارە بە دیناری عراقی، دۆلار، یۆرۆ و هتد *(نوێ)*
- **ئاڕاستەی دەق** — دیاریکردنی ئۆتۆماتیکی RTL/LTR بەپێی ناوەڕۆک *(نوێ)*
- **کۆکردنەوەی وشە** — کۆکردنەوەی وشەکان بە پاشگری کوردی (ەکان/ان) *(نوێ)*
- **ئامرازەکانی سترینگ** — slug، ژمردنی وشە، بڕین، پێچەوانەکردن و هتد *(نوێ)*
- **کاتی نسبی** — وەک "٢ خولەک لەمەوپێش" یان "دوێنێ" *(نوێ)*
- **ژمارەی مۆبایل** — فۆرماتکردن و ناسینەوەی ئۆپەرەیتەری عراقی *(نوێ)*
- **ڕیزی ژمارە بۆ وشە** — وەک "1-5" بۆ "یەک تا پێنج" *(نوێ)*
- **ئامرازەکانی ڕستە** — جیاکردنەوە و ژمردنی ڕستەکان *(نوێ)*
- **لۆکاڵایزەیشنی کوردی** — وەرگێڕانی وشەکانی سیستەم (بڕین، لەبەرگرتنەوە، لکاندن...) *(نوێ)*
- **پشکنینی ڕاستی ژمارە** — پشکنینی ئەوەی سترینگێک ژمارەی کوردی/ئینگلیزییە *(نوێ)*
- **فلتەری ئینپووتی کوردی** — بلۆککردنی پیتی ئینگلیزی لە TextField *(نوێ)*
- **پاشگری ڕێزبەندی** — زیادکردنی ەم/یەم (یەکەم، دووەم، سێیەم...) *(نوێ)*
- **ناوی ڕەنگەکان** — ناوی ڕەنگەکان بە کوردی (سوور، شین، زەرد...) *(نوێ)*
- **فرە زمانی** — پشتگیری فرە زمانی لەگەڵ ئاڕاستەی ئۆتۆماتیکی، بەکارهێنەر دەتوانێت زمانی خۆی زیاد بکات *(نوێ)*
- **پشکنینی فۆرم** — پشکنینی ئامادە بۆ TextFormField (پێویستە، ئیمەیل، مۆبایل، ژمارە...) *(نوێ)*
- **سڵاوکردن بەپێی کات** — بەیانی باش / ڕۆژ باش / ئێوارە باش / شەو باش *(نوێ)*
- **پاشگری ژمارە** — ئۆتۆماتیکی کۆ/تاک بەپێی ژمارە (٥ کتێبەکان، هیچ کتێبێک) *(نوێ)*
- **ڕۆژژمێری هیجری و کوردی** — گۆڕینی نێوان گریگۆری، هیجری، و کوردی (ڕۆژهەڵاتی) *(نوێ)*

---

## Features

| Category | Features |
| --- | --- |
| **Numbers** | Number to words, digit conversion (EN↔KU), comma formatting, words to number, number range |
| **Text** | Kurdish detection, normalizer, pluralization, string utilities, sentence tools, ordinal suffix |
| **Date/Time** | Kurdish date formatter, relative time, Hijri calendar, Kurdish (Rojhalati) calendar, custom date picker |
| **Input** | Keyboard layout converter, input filters (Kurdish-only, no-English), form validators, digit formatter |
| **Localization** | Multi-language (Kurdish/English/Arabic), JSON-based translations, auto RTL/LTR, system UI translation |
| **UI** | Kurdish fonts (Rabar), text direction widget, color names, currency formatter, phone number formatter |
| **Misc** | Time-based greeting, count suffix (auto-plural), URL fixer |

## Installation

```yaml
dependencies:
  kurdish_sorani_tools: ^0.1.0
```

## Quick Start

```dart
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Number to Kurdish words
String words = 250.toKurdishString(); // "دوو سەد و پەنجا"

// Digit conversion
String ku = convertEnToKu("123"); // "١٢٣"

// Kurdish date
String today = KurdishDateTime.today(); // "هەینی, 29 ئایار 2026"

// Relative time
String ago = DateTime.now().subtract(Duration(minutes: 5)).toKurdishRelative;
// "٥ خولەک لەمەوپێش"

// Phone number
String phone = "07501234567".formatPhone; // "0750 123 4567"
String? op = "07501234567".phoneOperator; // "کۆڕەک"

// Currency
String price = 25000.toIQD(); // "25,000 د.ع"

// Pluralization
String plural = "کتێب".toPlural; // "کتێبەکان"

// Greeting
String hi = KurdishGreeting.now(); // "ڕۆژ باش"

// Calendar
HijriDate hijri = DateTime.now().toHijri;
KurdishDate kd = DateTime.now().toKurdishCalendar;

// Keyboard converter
String result = "sLaw".toKurdishKeyboard; // "سڵاو"

// Text normalizer
String normalized = "كوردي".normalizeKurdish; // "کوردی"

// Ordinal
String ord = 1.toKurdishOrdinal; // "یەکەم"

// Validators
TextFormField(validator: KurdishValidators.phone())
TextFormField(validator: KurdishValidators.required())
```

## Multi-Language Support

```dart
final langManager = KurdishLangManager();
final translations = await KurdishLangLoader.loadMultiple(defaultLangConfigs);
for (final t in translations) langManager.addLanguage(t);

langManager.setLanguage('en'); // or 'ckb', 'ar'
langManager.tr('save'); // "Save" / "پاشەکەوتکردن" / "حفظ"

// System UI (Cut/Copy/Paste) also translates automatically
kurdishLocalizationLanguageGetter = () => langManager.currentLanguage;
```

## Kurdish Date Picker

```dart
final date = await showKurdishDatePickerModal(
  context: context,
  lang: 'ckb', // fully Kurdish UI, or 'en', 'ar'
);
```

## Localization Setup

```dart
MaterialApp(
  localizationsDelegates: kurdishLocalizationsDelegates,
  supportedLocales: [Locale('ku', 'IQ'), Locale('en', 'US'), Locale('ar')],
)
```

---

## Documentation

Full documentation with examples in Kurdish, English, and Arabic:
[https://dana-sherzad.com/projects/flutter-kurdish-sorani-tools](https://dana-sherzad.com/projects/flutter-kurdish-sorani-tools)

## Example

A full example app is included in the [example](example/) directory with 20+ demo pages.

## Author

Dana Sherzad — [GitHub](https://github.com/dana-1sherzad) · [Website](https://dana-sherzad.com)

## License

MIT
