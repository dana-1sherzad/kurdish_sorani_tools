# ئامرازەکانی کوردی سۆرانی | Kurdish Sorani Tools | أدوات الكردية السورانية

![Kurdish Sorani Tools](https://i.ibb.co/X4FpwWs/Slide1.jpg)

[![pub package](https://img.shields.io/pub/v/kurdish_sorani_tools.svg)](https://pub.dev/packages/kurdish_sorani_tools)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

> **Full documentation for [kurdish_sorani_tools](https://pub.dev/packages/kurdish_sorani_tools) Flutter package**
>
> Published at: [https://dana-sherzad.com/projects/flutter-kurdish-sorani-tools](https://dana-sherzad.com/projects/flutter-kurdish-sorani-tools)
>
> Made by [Dana Sherzad](https://github.com/dana-1sherzad)

---

- [کوردی سۆرانی](#کوردی-سۆرانی)
- [English](#english)
- [العربية](#العربية)

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

### دامەزراندن

ئەمە زیاد بکە بۆ `pubspec.yaml`:

```yaml
dependencies:
  kurdish_sorani_tools: ^0.1.0
```

دواتر ئەم فەرمانە ڕان بکە:

```bash
flutter pub get
```

### بەکارهێنان

```dart
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
```

#### گۆڕینی ژمارە بۆ وشەی کوردی

گۆڕینی ژمارەی تەواو بۆ نووسینی کوردی سۆرانی:

```dart
// بەکارهێنانی میسۆدی ئێکستێنشن
String result = 250.toKurdishString();
// ئەنجام: "دوو سەد و پەنجا"

// بەکارهێنانی فەنکشن بە ڕاستەوخۆ
String words = GorinyZhmaraBoNusin(1500);
// ئەنجام: "یەک هەزار و پێنج سەد"

// لە سترینگی ژمارە (فاریزە پشتگیری دەکات)
String? fromStr = GorinyZhmarayNawString("1,000,000");
// ئەنجام: "یەک ملیۆن"
```

#### گۆڕینی ژمارە (ئینگلیزی ↔ کوردی)

```dart
// ئینگلیزی بۆ کوردی
String kuDigits = convertEnToKu("123");
// ئەنجام: "١٢٣"

// کوردی بۆ ئینگلیزی
String enDigits = convertKuToEn("١٢٣");
// ئەنجام: "123"
```

#### فۆرماتی فاریزە (جیاکەرەوەی هەزاران)

```dart
// زیادکردنی فاریزە
String formatted = DananyFariza(1234567);
// ئەنجام: "1,234,567"

// بەکارهێنانی ئێکستێنشن
String result = "1234567".ZyadkrdnyFariza;
// ئەنجام: "1,234,567"

// سڕینەوەی فاریزە
num number = SrinawayFariza("1,234,567");
// ئەنجام: 1234567

// بەکارهێنانی ئێکستێنشن
num value = "1,234,567".LabrdnyFariza;
// ئەنجام: 1234567
```

#### DigitFormat (جیاکەرەوەی تایبەت)

```dart
String formatted = DigitFormat.convert("1234567", separator: ",");
// ئەنجام: "1,234,567"
```

#### DigitToWord (ژمارە بۆ وشە لەگەڵ پشتگیری پارە)

```dart
// گۆڕین بۆ وشەی کوردی
String word = DigitToWord.toWord("25000", StrType.StrWord);
// ئەنجام: "بیست و پێنج هەزار"

// گۆڕین بە شێوەی ژمارەیی
String numWord = DigitToWord.toWord("25000", StrType.NumWord);
// ئەنجام: "25 هەزار"

// بە فۆرماتی پارە (دیناری عراقی)
String money = DigitToWord.toWord("25000", StrType.StrWord, isMoney: true);
// ئەنجام: "بیست و پێنج هەزار دیناری عراقی"
```

#### وشە بۆ ژمارە

```dart
// گۆڕینی وشەی کوردی بۆ ژمارە
int? number = wordsToNumber("بیست و پێنج");
// ئەنجام: 25

// گۆڕین بۆ سترینگ لەگەڵ هەڵبژاردنی زمان
String? result = wordsToNumberString(
  "بیست و پێنج هەزار",
  digits: DigitLocale.ku,
  addComma: true,
);
// ئەنجام: "٢٥,٠٠٠"
```

#### ناسینەوەی دەقی کوردی

```dart
// پشکنین ئایا هەموو دەقەکە کوردییە
bool result = isKurdish("سڵاو");
// ئەنجام: true

bool result2 = isKurdish("Hello");
// ئەنجام: false

// پشکنین ئایا دەقەکە پیتی کوردی لەخۆ دەگرێت
bool has = hasKurdish("Hello سڵاو");
// ئەنجام: true
```

#### چاککردنی بەستەر

```dart
// چاککردنی بۆشایی لە بەستەرەکان
String fixedUrl = chakkrdny_link("https://example.com/path with spaces");
// ئەنجام: "https://example.com/path%20with%20spaces"
```

#### فۆرماتکەری ئینپووت بۆ TextField

```dart
TextField(
  inputFormatters: [
    DigitInputFormat(), // بە ئۆتۆماتیکی ژمارەکان فۆرمات دەکات بە فاریزە
  ],
)
```

#### فۆنتی کوردی

پاکێجەکە فۆنتی ڕابەر لەخۆ دەگرێت (Rabar 001, Rabar 021, Rabar 022):

```dart
// بەکارهێنانی KurdishTextStyle
Text(
  "سڵاو",
  style: KurdishTextStyle(
    KurdFont: KurdFont.rabar_21,
    fontSize: 18,
  ),
)

// بەکارهێنانی KurdishSoraniTheme بۆ ئاستی تیم
MaterialApp(
  theme: ThemeData(
    fontFamily: KurdishSoraniTheme.font(KurdFont: KurdFont.rabar_22),
    package: KurdishSoraniTheme.package,
  ),
)
```

فۆنتە بەردەستەکان:

| کۆنستانت | ناوی فۆنت |
| --- | --- |
| `KurdFont.rabar_1` | Rabar 001 |
| `KurdFont.rabar_21` | Rabar 021 |
| `KurdFont.rabar_22` | Rabar 022 |

### ئاماژەی API

#### فەنکشنەکان

##### `convertEnToKu(String digits)`

گۆڕینی ژمارەی ئینگلیزی بۆ کوردی

```dart
String result = convertEnToKu("2023");
// ئەنجام: "٢٠٢٣"
```

##### `convertKuToEn(String digits)`

گۆڕینی ژمارەی کوردی بۆ ئینگلیزی

```dart
String result = convertKuToEn("٢٠٢٣");
// ئەنجام: "2023"
```

##### `DananyFariza(Object number)`

زیادکردنی جیاکەرەوەی هەزاران (فاریزە). ژمارە وەک int، String، یان double وەردەگرێت.

```dart
String result = DananyFariza(1500000);
// ئەنجام: "1,500,000"

String result2 = DananyFariza("2500000");
// ئەنجام: "2,500,000"
```

##### `SrinawayFariza(String number)`

سڕینەوەی جیاکەرەوەی هەزاران (فاریزە) لە سترینگ و گەڕاندنەوەی وەک ژمارە.

```dart
num result = SrinawayFariza("1,500,000");
// ئەنجام: 1500000
```

##### `GorinyZhmaraBoNusin(int number, {bool ordinal = false})`

گۆڕینی ژمارەی int بۆ وشەی کوردی.

```dart
String result = GorinyZhmaraBoNusin(365);
// ئەنجام: "سێ سەد و شەست و پێنج"

String result2 = GorinyZhmaraBoNusin(1000000);
// ئەنجام: "یەک ملیۆن"
```

##### `GorinyZhmarayNawString(String number, {bool ordinal = false})`

گۆڕینی سترینگی ژمارە بۆ وشەی کوردی. فاریزە پشتگیری دەکات.

```dart
String? result = GorinyZhmarayNawString("1,250");
// ئەنجام: "یەک هەزار و دوو سەد و پەنجا"

String? result2 = GorinyZhmarayNawString("0");
// ئەنجام: "سفر"
```

##### `wordsToNumber(String words)`

گۆڕینی وشەی کوردی بۆ ژمارەی int.

```dart
int? result = wordsToNumber("سێ هەزار و پێنج سەد");
// ئەنجام: 3500
```

##### `wordsToNumberString(String words, {DigitLocale digits, bool addComma})`

گۆڕینی وشەی کوردی بۆ سترینگی فۆرماتکراو لەگەڵ هەڵبژاردنی زمان و فاریزە.

```dart
String? result = wordsToNumberString(
  "پەنج ملیۆن",
  digits: DigitLocale.ku,
  addComma: true,
);
// ئەنجام: "٥,٠٠٠,٠٠٠"

String? result2 = wordsToNumberString(
  "پەنج ملیۆن",
  digits: DigitLocale.en,
  addComma: true,
);
// ئەنجام: "5,000,000"
```

##### `isKurdish(String input, [bool isComplex, Pattern? trimPattern])`

پشکنین ئایا دەقەکە بە تەواوی کوردییە. ئەگەر هەموو پیتەکان کوردی بن `true` دەگەڕێنێتەوە.

```dart
bool result = isKurdish("سڵاو چۆنی");
// ئەنجام: true

bool result2 = isKurdish("Hello World");
// ئەنجام: false

bool result3 = isKurdish("سڵاو Hello");
// ئەنجام: false (هەموو دەقەکە کوردی نییە)
```

##### `hasKurdish(String input, [bool isComplex])`

پشکنین ئایا دەقەکە بەلایەنی کەمەوە یەک پیتی کوردی لەخۆ دەگرێت.

```dart
bool result = hasKurdish("Hello سڵاو World");
// ئەنجام: true

bool result2 = hasKurdish("Hello World");
// ئەنجام: false
```

##### `chakkrdny_link(String url)`

چاککردنی بۆشایی لە بەستەرەکان بە گۆڕینیان بۆ `%20`.

```dart
String result = chakkrdny_link("https://example.com/بەش ی یەکەم");
// ئەنجام: "https://example.com/بەش%20ی%20یەکەم"
```

##### `removeOrdinalSuffix(String word)`

سڕینەوەی پاشگری ڕێزبەندی لە دەقی کوردی.

```dart
String result = removeOrdinalSuffix("یەکەم");
// ئەنجام: "یەک"
```

#### کلاسەکان

##### `DigitFormat`

فۆرماتکردنی ژمارە بە جیاکەرەوەی تایبەت.

```dart
// بە فاریزە
String result = DigitFormat.convert("1000000", separator: ",");
// ئەنجام: "1,000,000"

// بە جیاکەرەوەی تایبەت
String result2 = DigitFormat.convert("1000000", separator: ".");
// ئەنجام: "1.000.000"
```

##### `DigitInputFormat`

TextInputFormatter بۆ فۆرماتکردنی فاریزە بە زیندوو لە TextField.

```dart
TextField(
  keyboardType: TextInputType.number,
  inputFormatters: [
    FilteringTextInputFormatter.digitsOnly,
    DigitInputFormat(), // ژمارەکان بە ئۆتۆماتیکی فۆرمات دەکات
  ],
)
```

##### `DigitToWord`

گۆڕینی ژمارە بۆ وشەی کوردی بە شێوەی ژمارەیی یان سترینگ، لەگەڵ پشتگیری پارە.

```dart
// شێوەی سترینگ (وشەی تەواو)
String result = DigitToWord.toWord("150000", StrType.StrWord);
// ئەنجام: "سەد و پەنجا هەزار"

// شێوەی ژمارەیی
String result2 = DigitToWord.toWord("150000", StrType.NumWord);
// ئەنجام: "150 هەزار"

// بە فۆرماتی پارە
String result3 = DigitToWord.toWord("150000", StrType.StrWord, isMoney: true);
// ئەنجام: "سەد و پەنجا هەزار دیناری عراقی"

// بە جیاکەرەوەی تایبەت
String result4 = DigitToWord.toWord("1,500,000", StrType.StrWord, separator: ',');
// ئەنجام: "یەک ملیۆن و پێنج سەد هەزار"
```

##### `KurdFont`

کۆنستانتەکانی خێزانی فۆنت بۆ بەکارهێنان لەگەڵ KurdishTextStyle.

```dart
// فۆنتە بەردەستەکان:
KurdFont.rabar_1   // Rabar 001
KurdFont.rabar_21  // Rabar 021
KurdFont.rabar_22  // Rabar 022
```

##### `KurdishTextStyle`

TextStyle لەگەڵ پشتگیری فۆنتی کوردی. هەموو تایبەتمەندییەکانی TextStyle پشتگیری دەکات.

```dart
Text(
  "سڵاو جیهان",
  style: KurdishTextStyle(
    KurdFont: KurdFont.rabar_21,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
)
```

##### `KurdishSoraniTheme`

یاریدەدەری تیم بۆ دانانی فۆنتی کوردی لە ئاستی تەواوی ئەپەکە.

```dart
MaterialApp(
  theme: ThemeData(
    fontFamily: KurdishSoraniTheme.font(KurdFont: KurdFont.rabar_22),
    package: KurdishSoraniTheme.package,
  ),
  home: MyHomePage(),
)
```

#### ئێکستێنشنەکان

##### `IntExtensions` (لەسەر `int`)

```dart
// گۆڕینی ژمارە بۆ وشەی کوردی
String result = 999.toKurdishString();
// ئەنجام: "نۆ سەد و نەوەد و نۆ"

// بە جیاکەرەوەی تایبەت
String result2 = 999.toKurdishString(separator: ' و ');
// ئەنجام: "نۆ سەد و نەوەد و نۆ"
```

##### `NumberToKurdishWordsString` (لەسەر `String`)

```dart
String? result = "500".GorinyZhmaraBoWsha();
// ئەنجام: "پێنج سەد"
```

##### `NumberToKurdishWordsInt` (لەسەر `int`)

```dart
String? result = 500.GorinyZhmaraBoWsha();
// ئەنجام: "پێنج سەد"
```

##### `CommasString` (لەسەر `String`)

```dart
// زیادکردنی فاریزە
String result = "2500000".ZyadkrdnyFariza;
// ئەنجام: "2,500,000"

// سڕینەوەی فاریزە
num result2 = "2,500,000".LabrdnyFariza;
// ئەنجام: 2500000
```

##### `CommasNum` (لەسەر `num`)

```dart
String result = 2500000.ZyadkrdnyFariza;
// ئەنجام: "2,500,000"
```

##### `WordsToNumber` (لەسەر `String`)

```dart
// گۆڕین بۆ int
int? result = "سێ هەزار".convertWordsToNumber();
// ئەنجام: 3000

// گۆڕین بۆ سترینگ لەگەڵ هەڵبژاردنەکان
String? result2 = "سێ هەزار".convertWordsToNumberString(
  digits: DigitLocale.ku,
  addComma: true,
);
// ئەنجام: "٣,٠٠٠"
```

##### `RemoveOrdinalSuffix` (لەسەر `String`)

```dart
String result = "یەکەم".withoutOrdinalSuffix;
// ئەنجام: "یەک"
```

### تایبەتمەندییە نوێیەکان (v0.1.0)

#### بەروار و کاتی کوردی (KurdishDateTime)

```dart
// بەرواری ئەمڕۆ بە کوردی
String today = KurdishDateTime.today();
// ئەنجام: "هەینی, 29 ئایار 2026"

// فۆرماتی تایبەت
DateTime now = DateTime.now();
String formatted = now.toKurdishDate(pattern: 'EEEE, dd MMMM yyyy');
// ئەنجام: "هەینی, 29 ئایار 2026"

// ناوی ڕۆژ و مانگ
String day = now.kurdishDayName;    // "هەینی"
String month = now.kurdishMonthName; // "ئایار"
```

#### گۆڕینی لەیاوتی کیبۆرد (KurdishKeyboard)

```dart
// ئینگلیزی بۆ کوردی
String result = KurdishKeyboard.enToKu("sLaw");
// ئەنجام: "سڵاو"

// بەکارهێنانی ئێکستێنشن
String result2 = "kwrdstan".toKurdishKeyboard;
// ئەنجام: "کوردستان"

// کوردی بۆ ئینگلیزی
String result3 = "سڵاو".toEnglishKeyboard;
```

نەخشەی گۆڕین:

| ئینگلیزی (بچووک) | کوردی | ئینگلیزی (گەورە) | کوردی |
| --- | --- | --- | --- |
| q | ق | Q | ق |
| w | و | W | وو |
| e | ە | E | ێ |
| r | ر | R | ڕ |
| t | ت | T | ط |
| y | ی | Y | ێ |
| u | ئ | U | ء |
| i | ح | I | ع |
| o | ۆ | O | ؤ |
| p | پ | P | ث |
| a | ا | A | ئا |
| s | س | S | ش |
| d | د | D | ذ |
| f | ف | F | إ |
| g | گ | G | غ |
| h | ه | H | ھ |
| j | ژ | J | چ |
| k | ک | K | ك |
| l | ل | L | ڵ |
| z | ز | Z | ض |
| x | خ | X | ص |
| c | ج | C | چ |
| v | ڤ | V | ظ |
| b | ب | B | ب |
| n | ن | N | ن |
| m | م | M | م |

**چۆنیەتی بەکارهێنان بۆ یەک فیلد:**

```dart
TextField(
  onChanged: (value) {
    // گۆڕینی ئینپووت بۆ کوردی کاتێک بەکارهێنەر دەنووسێت
    final kurdishText = value.toKurdishKeyboard;
    setState(() {
      result = kurdishText;
    });
  },
)
```

**چۆنیەتی بەکارهێنان بۆ تەواوی پڕۆژەکە (TextInputFormatter تایبەت):**

```dart
class KurdishKeyboardFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newText = newValue.text.toKurdishKeyboard;
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

// بەکارهێنان لە هەر TextField ێک:
TextField(
  inputFormatters: [KurdishKeyboardFormatter()],
)

// یان بۆ تەواوی پڕۆژەکە، تیمی تایبەت دروست بکە:
MaterialApp(
  builder: (context, child) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: child!,
    );
  },
)
```

#### نۆرمالکردنی دەق (KurdishNormalizer)

```dart
// گۆڕینی پیتەکانی عەرەبی بۆ کوردی
String result = KurdishNormalizer.normalize("كوردي سوراني");
// ئەنجام: "کوردی سورانی"

// سڕینەوەی هەرەکات
String result2 = "كُردِي".removeDiacritics;

// سڕینەوەی تاتوێ
String result3 = "كتـــێب".removeTatweel;
// ئەنجام: "كتێب"

// نۆرمالکردنی تەواو
String result4 = "كتـــێب يەكەم".normalizeKurdishAll;
// ئەنجام: "کتێب یەکەم"
```

#### فۆرماتی دراو (KurdishCurrency)

```dart
// دیناری عراقی
String result = 25000.toIQD();
// ئەنجام: "25,000 د.ع"

// بە ژمارەی کوردی
String result2 = 25000.toIQD(kurdishDigits: true);
// ئەنجام: "٢٥,٠٠٠ د.ع"

// بە ناوی تەواو
String result3 = 25000.toIQD(showName: true);
// ئەنجام: "25,000 دیناری عراقی"

// دراوی تر
String result4 = 1500.50.toCurrency(KurdishCurrencyType.usd, decimalPlaces: 2);
// ئەنجام: "1,500.50 $"
```

#### ئاڕاستەی دەق (KurdishTextDirection)

```dart
// دیاریکردنی ئاڕاستە
TextDirection dir = KurdishTextDirection.detectDirection("سڵاو");
// ئەنجام: TextDirection.rtl

// بەکارهێنانی ئێکستێنشن
bool isRtl = "سڵاو".isRTL;  // true
bool isLtr = "Hello".isLTR;  // true

// ویدجێتی ئۆتۆماتیکی
KurdishAutoDirection(text: "سڵاو جیهان")
```

#### کۆکردنەوەی وشە (KurdishPlural)

```dart
// کۆ (دیاری)
String result = KurdishPlural.pluralDefinite("کتێب");
// ئەنجام: "کتێبەکان"

// کۆ (نادیاری)
String result2 = "منداڵ".toPluralIndefinite;
// ئەنجام: "منداڵان"

// گەڕاندنەوەی تاک
String result3 = "کتێبەکان".toSingular;
// ئەنجام: "کتێب"

// ژمردن لەگەڵ وشە
String result4 = KurdishPlural.count(5, "کتێب");
// ئەنجام: "5 کتێبەکان"
```

#### ئامرازەکانی سترینگ (KurdishStringUtils)

```dart
// ژمردنی وشە
int count = "سڵاو جیهان چۆنی".kurdishWordCount;
// ئەنجام: 3

// دروستکردنی slug
String slug = "سڵاو جیهان".toKurdishSlug;
// ئەنجام: "سڵاو-جیهان"

// بڕینی دەق
String truncated = "سڵاو جیهان چۆنی باشی".truncateKurdishWords(2);
// ئەنجام: "سڵاو جیهان..."

// سڕینەوەی ژمارە
String noNums = "سڵاو ١٢٣ جیهان".removeNumbers;
// ئەنجام: "سڵاو  جیهان"

// هەڵگرتنی ژمارە
String nums = "سڵاو ١٢٣ جیهان ٤٥٦".extractNumbers;
// ئەنجام: "١٢٣ ٤٥٦"
```

#### کاتی نسبی (KurdishRelativeTime)

```dart
// لەمەوپێش
DateTime fiveMinAgo = DateTime.now().subtract(Duration(minutes: 5));
String result = fiveMinAgo.toKurdishRelative;
// ئەنجام: "٥ خولەک لەمەوپێش"

// دوێنێ
DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
String result2 = yesterday.toKurdishRelative;
// ئەنجام: "دوێنێ"

// داهاتوو
DateTime tomorrow = DateTime.now().add(Duration(days: 1));
String result3 = tomorrow.toKurdishRelative;
// ئەنجام: "سبەینێ"
```

#### ژمارەی مۆبایل (KurdishPhone)

```dart
// فۆرماتکردن
String result = KurdishPhone.format("07501234567");
// ئەنجام: "0750 123 4567"

// ناسینەوەی ئۆپەرەیتەر
String? operator = "07501234567".phoneOperator;
// ئەنجام: "کۆڕەک"

// پشکنینی ڕاستی
bool valid = "07501234567".isValidIraqiPhone;
// ئەنجام: true

// فۆرماتی نێودەوڵەتی
String intl = "07501234567".toInternationalPhone;
// ئەنجام: "+9647501234567"
```

#### ڕیزی ژمارە بۆ وشە (KurdishNumberRange)

```dart
// گۆڕینی ڕیز
String result = KurdishNumberRange.toWords(1, 5);
// ئەنجام: "یەک تا پێنج"

// لە سترینگ
String? result2 = "10-20".toKurdishRange;
// ئەنجام: "ده تا بیست"
```

#### ئامرازەکانی ڕستە (KurdishSentence)

```dart
// جیاکردنەوەی ڕستەکان
List<String> sentences = "سڵاو. چۆنی؟ باشم.".kurdishSentences;
// ئەنجام: ["سڵاو", "چۆنی", "باشم"]

// ژمردنی ڕستەکان
int count = "سڵاو. چۆنی؟ باشم.".kurdishSentenceCount;
// ئەنجام: 3
```

#### لۆکاڵایزەیشنی کوردی (KurdishMaterialLocalizations)

```dart
// زیاد بکە بۆ MaterialApp بۆ وەرگێڕانی وشەکانی سیستەم بۆ کوردی
MaterialApp(
  locale: kurdishLocale,
  supportedLocales: const [kurdishLocale, Locale('en', 'US')],
  localizationsDelegates: kurdishLocalizationsDelegates,
)
// ئێستا Cut/Copy/Paste دەبنە: بڕین/لەبەرگرتنەوە/لکاندن
```

#### پشکنینی ڕاستی ژمارە (KurdishNumberValidator)

```dart
// پشکنینی ژمارەی کوردی
bool result = "١٢٣٤٥".isKurdishNumber;  // true
bool result2 = "12345".isKurdishNumber;   // false

// پشکنینی هەر ژمارەیەک (کوردی یان ئینگلیزی)
bool result3 = "١٢٣".isValidNumber;  // true
bool result4 = "123".isValidNumber;   // true
bool result5 = "abc".isValidNumber;   // false

// پشکنینی ژمارەی تەواو
bool result6 = "123".isValidInteger;  // true
bool result7 = "12.5".isValidInteger; // false
```

#### فلتەری ئینپووتی کوردی (KurdishOnlyInputFilter)

```dart
// تەنها کوردی (ئینگلیزی بلۆک دەکرێت)
TextField(
  inputFormatters: const [
    KurdishOnlyInputFilter(allowNumbers: true),
  ],
)

// بێ ئینگلیزی (هەموو شتێکی تر ڕێگەپێدراوە)
TextField(
  inputFormatters: const [NoEnglishInputFilter()],
)

// تەنها ژمارەی کوردی
TextField(
  inputFormatters: const [KurdishDigitsOnlyInputFilter()],
)
```

#### پاشگری ڕێزبەندی (KurdishOrdinal)

```dart
// گۆڕینی ژمارە بۆ ڕێزبەندی
String result = 1.toKurdishOrdinal;  // "یەکەم"
String result2 = 2.toKurdishOrdinal; // "دووەم"
String result3 = 3.toKurdishOrdinal; // "سێیەم"
String result4 = 5.toKurdishOrdinal; // "پێنجەم"
String result5 = 20.toKurdishOrdinal; // "بیستەم"

// زیادکردنی پاشگری بۆ وشە
String result6 = "پێنج".withOrdinalSuffix; // "پێنجەم"
```

#### ناوی ڕەنگەکان (KurdishColor)

```dart
// گەڕاندنەوەی ناوی ڕەنگ بە کوردی
String name = Colors.red.kurdishName;    // "سوور"
String name2 = Colors.blue.kurdishName;  // "شین"
String name3 = Colors.green.kurdishName; // "سەوز"

// نزیکترین ناوی ڕەنگ
String closest = Color(0xFFFF5500).closestKurdishName; // "پرتەقاڵی"

// گەڕاندنەوەی ڕەنگ لە ناو
Color? color = KurdishColor.fromName("سوور"); // Color(0xFFFF0000)
```

#### فرە زمانی و ئاڕاستە (KurdishLangManager)

بەکارهێنەر دەتوانێت زمانی تایبەتی خۆی زیاد بکات و ئاڕاستەی دەق بە ئۆتۆماتیکی دەگۆڕێت:

```dart
// دروستکردنی بەڕێوەبەر
final manager = KurdishLangManager();

// زمانە ئامادەکان: کوردی (ckb)، عەرەبی (ar)، ئینگلیزی (en)
manager.setLanguage('ckb'); // کوردی
manager.tr('save');         // "پاشەکەوتکردن"

manager.setLanguage('ar');  // عەرەبی
manager.tr('save');         // "حفظ"

manager.setLanguage('en');  // ئینگلیزی
manager.tr('save');         // "Save"

// ئاڕاستەی دەق بە ئۆتۆماتیکی دەگۆڕێت
manager.textDirection; // TextDirection.rtl یان TextDirection.ltr
```

**زیادکردنی زمانی تایبەت:**

```dart
// زیادکردنی زمانی نوێ
manager.addLanguage(KurdishTranslation(
  languageCode: 'fa',
  languageName: 'فارسی',
  textDirection: TextDirection.rtl,
  translations: {
    'save': 'ذخیره',
    'cancel': 'لغو',
    'ok': 'تأیید',
    // ... زیاتر
  },
));
```

**بەکارهێنان لەگەڵ InheritedWidget بۆ تەواوی ئەپەکە:**

```dart
// لە ئاستی سەرەوە
KurdishLangProvider(
  manager: KurdishLangManager(),
  child: MaterialApp(home: MyApp()),
)

// لە هەر شوێنێک لە ئەپەکە
final lang = KurdishLangProvider.of(context);
Text(lang.tr('settings')) // "ڕێکخستنەکان"

// یان بە کورتی
Text(KurdishLangProvider.tr(context, 'home')) // "ماڵەوە"

// ئاڕاستەی ئۆتۆماتیکی
KurdishDirectionality(child: MyWidget())
```

#### پشکنینی فۆرم (KurdishValidators)

```dart
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

TextFormField(
  validator: KurdishValidators.required("ئەم خانەیە پڕ بکەرەوە"),
)
TextFormField(
  validator: KurdishValidators.email("ئیمەیلەکە هەڵەیە"),
)
TextFormField(
  validator: KurdishValidators.phone("ژمارەی مۆبایل هەڵەیە"),
)
TextFormField(
  validator: KurdishValidators.minLength(3),
)
TextFormField(
  validator: KurdishValidators.kurdishOnly(),
)
```

#### سڵاوکردن بەپێی کات (KurdishGreeting)

```dart
String greeting = KurdishGreeting.now();
// "بەیانی باش" (5-12), "ڕۆژ باش" (12-17)
// "ئێوارە باش" (17-21), "شەو باش" (21-5)

String withName = KurdishGreeting.withName("دانا");
// "ڕۆژ باش، دانا"
```

#### پاشگری ژمارە (KurdishCountSuffix)

```dart
String result = 5.withWord("کتێب");
// "5 کتێبەکان"

String result2 = 1.withWord("کتێب");
// "١ کتێب"

String result3 = 0.withWord("کتێب");
// "هیچ کتێبێک"
```

#### ڕۆژژمێری هیجری و کوردی (KurdishCalendar)

```dart
DateTime now = DateTime.now();

// گریگۆری بۆ هیجری
HijriDate hijri = now.toHijri;
String hijriStr = now.toHijriFormat(pattern: 'dd MMMM yyyy');
// "05 ڕەمەزان 1447"

// گریگۆری بۆ کوردی (ڕۆژهەڵاتی)
KurdishDate kd = now.toKurdishCalendar;
String kdStr = now.toKurdishCalendarFormat(pattern: 'dd MMMM yyyy');
// "08 جۆزەردان 2747"

// هیجری بۆ گریگۆری
DateTime greg = KurdishCalendar.hijriToGregorian(1447, 9, 5);

// ناوی مانگەکان
KurdishCalendar.hijriMonthNames;   // [موحەڕەم، سەفەر، ...]
KurdishCalendar.kurdishMonthNames; // [خاکەلێوە، گوڵان، ...]
```

### پڕۆژەی نموونە

پڕۆژەیەکی تەواوی نموونەی Flutter لە [ئێرە](https://github.com/dana-1sherzad/flutter_kurdish_sorani_tools_project) بەردەستە.

### پێداویستییەکان

- Dart SDK: `>=2.19.6 <3.0.0`
- Flutter: `>=1.17.0`

### مۆڵەت

ئەم پڕۆژەیە لەژێر مۆڵەتی MIT دابەشکراوە — فایلی [LICENSE](LICENSE) ببینە بۆ وردەکاری.

### بەشداریکردن

بەشداریکردن بەخێرهاتووە! تکایە Pull Request بنێرە.

### نووسەر

دانا شێرزاد — [GitHub](https://github.com/dana-1sherzad)

---

## English

A comprehensive Flutter/Dart package providing utilities for the Kurdish Sorani (سۆرانی) language, including number conversion, digit formatting, text detection, URL fixing, and Kurdish font support.

### Features

- **Number to Words** — Convert numeric values to Kurdish Sorani text representation
- **Digit Conversion** — Convert between English (Western) and Kurdish (Eastern Arabic) numerals
- **Comma Formatting** — Add/remove thousand separators in numbers
- **Words to Number** — Convert Kurdish word representation back to numeric values
- **Kurdish Text Detection** — Check if a string contains or is entirely Kurdish text
- **URL Fix** — Automatically fix whitespace issues in URLs
- **Ordinal Suffix** — Remove ordinal suffixes from Kurdish numbers
- **Kurdish Fonts** — Built-in Rabar font family with easy-to-use TextStyle and Theme helpers
- **Input Formatter** — TextInputFormatter for live digit formatting in text fields
- **Kurdish Date/Time** — Format dates with Kurdish day and month names *(new)*
- **Keyboard Layout Converter** — Convert English keyboard input to Kurdish characters *(new)*
- **Text Normalizer** — Normalize Arabic characters to Kurdish and remove diacritics *(new)*
- **Currency Formatter** — Format amounts as Iraqi Dinar, USD, EUR, etc. *(new)*
- **Text Direction** — Auto-detect RTL/LTR based on content *(new)*
- **Pluralization** — Pluralize Kurdish words with proper suffixes (ەکان/ان) *(new)*
- **String Utilities** — Slug, word count, truncate, reverse, and more *(new)*
- **Relative Time** — Like "5 minutes ago" in Kurdish *(new)*
- **Phone Number** — Format and validate Iraqi phone numbers *(new)*
- **Number Range to Words** — e.g., "1-5" → "یەک تا پێنج" *(new)*
- **Sentence Utilities** — Split and count Kurdish sentences *(new)*
- **Kurdish Localization** — Translate system words (Cut, Copy, Paste...) to Kurdish *(new)*
- **Number Validator** — Validate if a string is a valid Kurdish/English number *(new)*
- **Kurdish Input Filter** — Block English characters in TextFields *(new)*
- **Ordinal Suffix** — Add ordinal suffixes (1→یەکەم, 2→دووەم, 3→سێیەم...) *(new)*
- **Color Names** — Kurdish names for colors (سوور، شین، زەرد...) *(new)*
- **Multi-Language** — Multi-language support with auto-directionality, users can add custom languages *(new)*
- **Form Validators** — Ready-made validators for TextFormField (required, email, phone, numeric...) *(new)*
- **Greeting by Time** — بەیانی باش / ڕۆژ باش / ئێوارە باش / شەو باش based on hour *(new)*
- **Count Suffix** — Auto-pluralize based on count (5 کتێبەکان, هیچ کتێبێک) *(new)*
- **Hijri & Kurdish Calendar** — Convert between Gregorian, Hijri, and Kurdish (Rojhalati) calendars *(new)*

### Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  kurdish_sorani_tools: ^0.1.0
```

Then run:

```bash
flutter pub get
```

### Usage

```dart
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
```

#### Number to Kurdish Words

Convert integers to their Kurdish Sorani word representation:

```dart
// Using the extension method
String result = 250.toKurdishString();
// Output: "دوو سەد و پەنجا"

// Using the function directly
String words = GorinyZhmaraBoNusin(1500);
// Output: "یەک هەزار و پێنج سەد"

// From a string number (supports commas)
String? fromStr = GorinyZhmarayNawString("1,000,000");
// Output: "یەک ملیۆن"
```

#### Digit Conversion (English ↔ Kurdish)

```dart
// English to Kurdish numerals
String kuDigits = convertEnToKu("123");
// Output: "١٢٣"

// Kurdish to English numerals
String enDigits = convertKuToEn("١٢٣");
// Output: "123"
```

#### Comma Formatting (Thousand Separators)

```dart
// Add commas
String formatted = DananyFariza(1234567);
// Output: "1,234,567"

// Using extension
String result = "1234567".ZyadkrdnyFariza;
// Output: "1,234,567"

// Remove commas
num number = SrinawayFariza("1,234,567");
// Output: 1234567

// Using extension
num value = "1,234,567".LabrdnyFariza;
// Output: 1234567
```

#### DigitFormat (Custom Separator)

```dart
String formatted = DigitFormat.convert("1234567", separator: ",");
// Output: "1,234,567"
```

#### DigitToWord (Number to Word with Money Support)

```dart
// Convert to Kurdish word string
String word = DigitToWord.toWord("25000", StrType.StrWord);
// Output: "بیست و پێنج هەزار"

// Convert with numeric style
String numWord = DigitToWord.toWord("25000", StrType.NumWord);
// Output: "25 هەزار"

// With money format (Iraqi Dinar)
String money = DigitToWord.toWord("25000", StrType.StrWord, isMoney: true);
// Output: "بیست و پێنج هەزار دیناری عراقی"
```

#### Words to Number

```dart
// Convert Kurdish words to number
int? number = wordsToNumber("بیست و پێنج");
// Output: 25

// Convert to string with locale options
String? result = wordsToNumberString(
  "بیست و پێنج هەزار",
  digits: DigitLocale.ku,
  addComma: true,
);
// Output: "٢٥,٠٠٠"
```

#### Kurdish Text Detection

```dart
// Check if entire text is Kurdish
bool result = isKurdish("سڵاو");
// Output: true

bool result2 = isKurdish("Hello");
// Output: false

// Check if text contains any Kurdish characters
bool has = hasKurdish("Hello سڵاو");
// Output: true
```

#### URL Fix

```dart
// Fix whitespace in URLs
String fixedUrl = chakkrdny_link("https://example.com/path with spaces");
// Output: "https://example.com/path%20with%20spaces"
```

#### Input Formatter for TextFields

```dart
TextField(
  inputFormatters: [
    DigitInputFormat(), // Automatically formats numbers with commas
  ],
)
```

#### Kurdish Fonts

The package includes the Rabar font family (Rabar 001, Rabar 021, Rabar 022):

```dart
// Using KurdishTextStyle
Text(
  "سڵاو",
  style: KurdishTextStyle(
    KurdFont: KurdFont.rabar_21,
    fontSize: 18,
  ),
)

// Using KurdishSoraniTheme for theme-level font
MaterialApp(
  theme: ThemeData(
    fontFamily: KurdishSoraniTheme.font(KurdFont: KurdFont.rabar_22),
    package: KurdishSoraniTheme.package,
  ),
)
```

Available fonts:

| Font Constant | Font Name |
| --- | --- |
| `KurdFont.rabar_1` | Rabar 001 |
| `KurdFont.rabar_21` | Rabar 021 |
| `KurdFont.rabar_22` | Rabar 022 |

### API Reference

#### Functions

##### `convertEnToKu(String digits)`

Convert English digits to Kurdish numerals.

```dart
String result = convertEnToKu("2023");
// Output: "٢٠٢٣"
```

##### `convertKuToEn(String digits)`

Convert Kurdish numerals to English digits.

```dart
String result = convertKuToEn("٢٠٢٣");
// Output: "2023"
```

##### `DananyFariza(Object number)`

Add thousand separators (commas). Accepts int, String, or double.

```dart
String result = DananyFariza(1500000);
// Output: "1,500,000"

String result2 = DananyFariza("2500000");
// Output: "2,500,000"
```

##### `SrinawayFariza(String number)`

Remove thousand separators (commas) from a string and return as number.

```dart
num result = SrinawayFariza("1,500,000");
// Output: 1500000
```

##### `GorinyZhmaraBoNusin(int number, {bool ordinal = false})`

Convert an int to Kurdish words.

```dart
String result = GorinyZhmaraBoNusin(365);
// Output: "سێ سەد و شەست و پێنج"

String result2 = GorinyZhmaraBoNusin(1000000);
// Output: "یەک ملیۆن"
```

##### `GorinyZhmarayNawString(String number, {bool ordinal = false})`

Convert a string number to Kurdish words. Supports commas.

```dart
String? result = GorinyZhmarayNawString("1,250");
// Output: "یەک هەزار و دوو سەد و پەنجا"

String? result2 = GorinyZhmarayNawString("0");
// Output: "سفر"
```

##### `wordsToNumber(String words)`

Convert Kurdish words to an int.

```dart
int? result = wordsToNumber("سێ هەزار و پێنج سەد");
// Output: 3500
```

##### `wordsToNumberString(String words, {DigitLocale digits, bool addComma})`

Convert Kurdish words to a formatted string with locale and comma options.

```dart
String? result = wordsToNumberString(
  "پەنج ملیۆن",
  digits: DigitLocale.ku,
  addComma: true,
);
// Output: "٥,٠٠٠,٠٠٠"

String? result2 = wordsToNumberString(
  "پەنج ملیۆن",
  digits: DigitLocale.en,
  addComma: true,
);
// Output: "5,000,000"
```

##### `isKurdish(String input, [bool isComplex, Pattern? trimPattern])`

Check if text is entirely Kurdish. Returns `true` only if all characters are Kurdish.

```dart
bool result = isKurdish("سڵاو چۆنی");
// Output: true

bool result2 = isKurdish("Hello World");
// Output: false

bool result3 = isKurdish("سڵاو Hello");
// Output: false (not entirely Kurdish)
```

##### `hasKurdish(String input, [bool isComplex])`

Check if text contains at least one Kurdish character.

```dart
bool result = hasKurdish("Hello سڵاو World");
// Output: true

bool result2 = hasKurdish("Hello World");
// Output: false
```

##### `chakkrdny_link(String url)`

Fix whitespace in URLs by replacing spaces with `%20`.

```dart
String result = chakkrdny_link("https://example.com/path with spaces");
// Output: "https://example.com/path%20with%20spaces"
```

##### `removeOrdinalSuffix(String word)`

Remove ordinal suffix from Kurdish text.

```dart
String result = removeOrdinalSuffix("یەکەم");
// Output: "یەک"
```

#### Classes

##### `DigitFormat`

Static number formatting with a custom separator.

```dart
// With comma
String result = DigitFormat.convert("1000000", separator: ",");
// Output: "1,000,000"

// With custom separator
String result2 = DigitFormat.convert("1000000", separator: ".");
// Output: "1.000.000"
```

##### `DigitInputFormat`

TextInputFormatter for live comma formatting in TextFields.

```dart
TextField(
  keyboardType: TextInputType.number,
  inputFormatters: [
    FilteringTextInputFormatter.digitsOnly,
    DigitInputFormat(), // Automatically formats with commas as user types
  ],
)
```

##### `DigitToWord`

Convert numbers to Kurdish words in numeric or string style, with money support.

```dart
// String style (full words)
String result = DigitToWord.toWord("150000", StrType.StrWord);
// Output: "سەد و پەنجا هەزار"

// Numeric style
String result2 = DigitToWord.toWord("150000", StrType.NumWord);
// Output: "150 هەزار"

// With money format
String result3 = DigitToWord.toWord("150000", StrType.StrWord, isMoney: true);
// Output: "سەد و پەنجا هەزار دیناری عراقی"

// With custom separator
String result4 = DigitToWord.toWord("1,500,000", StrType.StrWord, separator: ',');
// Output: "یەک ملیۆن و پێنج سەد هەزار"
```

##### `KurdFont`

Font family constants for use with KurdishTextStyle.

```dart
// Available fonts:
KurdFont.rabar_1   // Rabar 001
KurdFont.rabar_21  // Rabar 021
KurdFont.rabar_22  // Rabar 022
```

##### `KurdishTextStyle`

TextStyle with built-in Kurdish font support. Supports all TextStyle properties.

```dart
Text(
  "سڵاو جیهان",
  style: KurdishTextStyle(
    KurdFont: KurdFont.rabar_21,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
)
```

##### `KurdishSoraniTheme`

Theme helper for setting Kurdish font at the app level.

```dart
MaterialApp(
  theme: ThemeData(
    fontFamily: KurdishSoraniTheme.font(KurdFont: KurdFont.rabar_22),
    package: KurdishSoraniTheme.package,
  ),
  home: MyHomePage(),
)
```

#### Extensions

##### `IntExtensions` (on `int`)

```dart
// Convert number to Kurdish words
String result = 999.toKurdishString();
// Output: "نۆ سەد و نەوەد و نۆ"

// With custom separator
String result2 = 999.toKurdishString(separator: ' و ');
// Output: "نۆ سەد و نەوەد و نۆ"
```

##### `NumberToKurdishWordsString` (on `String`)

```dart
String? result = "500".GorinyZhmaraBoWsha();
// Output: "پێنج سەد"
```

##### `NumberToKurdishWordsInt` (on `int`)

```dart
String? result = 500.GorinyZhmaraBoWsha();
// Output: "پێنج سەد"
```

##### `CommasString` (on `String`)

```dart
// Add commas
String result = "2500000".ZyadkrdnyFariza;
// Output: "2,500,000"

// Remove commas
num result2 = "2,500,000".LabrdnyFariza;
// Output: 2500000
```

##### `CommasNum` (on `num`)

```dart
String result = 2500000.ZyadkrdnyFariza;
// Output: "2,500,000"
```

##### `WordsToNumber` (on `String`)

```dart
// Convert to int
int? result = "سێ هەزار".convertWordsToNumber();
// Output: 3000

// Convert to string with options
String? result2 = "سێ هەزار".convertWordsToNumberString(
  digits: DigitLocale.ku,
  addComma: true,
);
// Output: "٣,٠٠٠"
```

##### `RemoveOrdinalSuffix` (on `String`)

```dart
String result = "یەکەم".withoutOrdinalSuffix;
// Output: "یەک"
```

### New Features (v0.1.0)

#### Kurdish Date/Time (KurdishDateTime)

```dart
// Today's date in Kurdish
String today = KurdishDateTime.today();
// Output: "هەینی, 29 ئایار 2026"

// Custom format
DateTime now = DateTime.now();
String formatted = now.toKurdishDate(pattern: 'EEEE, dd MMMM yyyy');

// Day and month names
String day = now.kurdishDayName;    // "هەینی"
String month = now.kurdishMonthName; // "ئایار"
```

#### Keyboard Layout Converter (KurdishKeyboard)

```dart
// English to Kurdish layout
String result = KurdishKeyboard.enToKu("sLaw");
// Output: "سڵاو"

// Using extension
String result2 = "kwrdstan".toKurdishKeyboard;
// Output: "کوردستان"

// Kurdish to English layout
String result3 = "سڵاو".toEnglishKeyboard;
```

Mapping reference:

| English (lower) | Kurdish | English (upper) | Kurdish |
| --- | --- | --- | --- |
| q | ق | Q | ق |
| w | و | W | وو |
| e | ە | E | ێ |
| r | ر | R | ڕ |
| t | ت | T | ط |
| y | ی | Y | ێ |
| u | ئ | U | ء |
| i | ح | I | ع |
| o | ۆ | O | ؤ |
| p | پ | P | ث |
| a | ا | A | ئا |
| s | س | S | ش |
| d | د | D | ذ |
| f | ف | F | إ |
| g | گ | G | غ |
| h | ه | H | ھ |
| j | ژ | J | چ |
| k | ک | K | ك |
| l | ل | L | ڵ |
| z | ز | Z | ض |
| x | خ | X | ص |
| c | ج | C | چ |
| v | ڤ | V | ظ |
| b | ب | B | ب |
| n | ن | N | ن |
| m | م | M | م |

**How to apply for a single field:**

```dart
TextField(
  onChanged: (value) {
    // Convert input to Kurdish as user types
    final kurdishText = value.toKurdishKeyboard;
    setState(() {
      result = kurdishText;
    });
  },
)
```

**How to apply for the entire project (custom TextInputFormatter):**

```dart
class KurdishKeyboardFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newText = newValue.text.toKurdishKeyboard;
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

// Use on any TextField:
TextField(
  inputFormatters: [KurdishKeyboardFormatter()],
)

// Or for the entire project, create a reusable widget:
class KurdishTextField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final InputDecoration? decoration;

  const KurdishTextField({super.key, this.onChanged, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [KurdishKeyboardFormatter()],
      onChanged: onChanged,
      decoration: decoration,
    );
  }
}
```

#### Text Normalizer (KurdishNormalizer)

```dart
// Normalize Arabic chars to Kurdish
String result = KurdishNormalizer.normalize("كوردي سوراني");
// Output: "کوردی سورانی"

// Remove diacritics
String result2 = "كُردِي".removeDiacritics;

// Remove tatweel
String result3 = "كتـــێب".removeTatweel;
// Output: "كتێب"

// Full normalization
String result4 = "كتـــێب يەكەم".normalizeKurdishAll;
// Output: "کتێب یەکەم"
```

#### Currency Formatter (KurdishCurrency)

```dart
// Iraqi Dinar
String result = 25000.toIQD();
// Output: "25,000 د.ع"

// With Kurdish digits
String result2 = 25000.toIQD(kurdishDigits: true);
// Output: "٢٥,٠٠٠ د.ع"

// With full name
String result3 = 25000.toIQD(showName: true);
// Output: "25,000 دیناری عراقی"

// Other currencies
String result4 = 1500.50.toCurrency(KurdishCurrencyType.usd, decimalPlaces: 2);
// Output: "1,500.50 $"
```

#### Text Direction (KurdishTextDirection)

```dart
// Detect direction
TextDirection dir = KurdishTextDirection.detectDirection("سڵاو");
// Output: TextDirection.rtl

// Using extensions
bool isRtl = "سڵاو".isRTL;  // true
bool isLtr = "Hello".isLTR;  // true

// Auto-direction widget
KurdishAutoDirection(text: "سڵاو جیهان")
```

#### Pluralization (KurdishPlural)

```dart
// Definite plural
String result = KurdishPlural.pluralDefinite("کتێب");
// Output: "کتێبەکان"

// Indefinite plural
String result2 = "منداڵ".toPluralIndefinite;
// Output: "منداڵان"

// Back to singular
String result3 = "کتێبەکان".toSingular;
// Output: "کتێب"

// Count with word
String result4 = KurdishPlural.count(5, "کتێب");
// Output: "5 کتێبەکان"
```

#### String Utilities (KurdishStringUtils)

```dart
// Word count
int count = "سڵاو جیهان چۆنی".kurdishWordCount;
// Output: 3

// Create slug
String slug = "سڵاو جیهان".toKurdishSlug;
// Output: "سڵاو-جیهان"

// Truncate
String truncated = "سڵاو جیهان چۆنی باشی".truncateKurdishWords(2);
// Output: "سڵاو جیهان..."

// Remove numbers
String noNums = "سڵاو ١٢٣ جیهان".removeNumbers;
// Output: "سڵاو  جیهان"

// Extract numbers
String nums = "سڵاو ١٢٣ جیهان ٤٥٦".extractNumbers;
// Output: "١٢٣ ٤٥٦"
```

#### Relative Time (KurdishRelativeTime)

```dart
// Past
DateTime fiveMinAgo = DateTime.now().subtract(Duration(minutes: 5));
String result = fiveMinAgo.toKurdishRelative;
// Output: "٥ خولەک لەمەوپێش"

// Yesterday
DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
String result2 = yesterday.toKurdishRelative;
// Output: "دوێنێ"

// Future
DateTime tomorrow = DateTime.now().add(Duration(days: 1));
String result3 = tomorrow.toKurdishRelative;
// Output: "سبەینێ"
```

#### Phone Number (KurdishPhone)

```dart
// Format
String result = KurdishPhone.format("07501234567");
// Output: "0750 123 4567"

// Detect operator
String? operator = "07501234567".phoneOperator;
// Output: "کۆڕەک"

// Validate
bool valid = "07501234567".isValidIraqiPhone;
// Output: true

// International format
String intl = "07501234567".toInternationalPhone;
// Output: "+9647501234567"
```

#### Number Range to Words (KurdishNumberRange)

```dart
// Convert range
String result = KurdishNumberRange.toWords(1, 5);
// Output: "یەک تا پێنج"

// From string
String? result2 = "10-20".toKurdishRange;
// Output: "ده تا بیست"
```

#### Sentence Utilities (KurdishSentence)

```dart
// Split sentences
List<String> sentences = "سڵاو. چۆنی؟ باشم.".kurdishSentences;
// Output: ["سڵاو", "چۆنی", "باشم"]

// Count sentences
int count = "سڵاو. چۆنی؟ باشم.".kurdishSentenceCount;
// Output: 3
```

#### Kurdish Localization (KurdishMaterialLocalizations)

```dart
// Add to MaterialApp to translate system words to Kurdish
MaterialApp(
  locale: kurdishLocale,
  supportedLocales: const [kurdishLocale, Locale('en', 'US')],
  localizationsDelegates: kurdishLocalizationsDelegates,
)
// Now Cut/Copy/Paste become: بڕین/لەبەرگرتنەوە/لکاندن
```

#### Number Validator (KurdishNumberValidator)

```dart
// Check Kurdish number
bool result = "١٢٣٤٥".isKurdishNumber;  // true
bool result2 = "12345".isKurdishNumber;   // false

// Check any number (Kurdish or English)
bool result3 = "١٢٣".isValidNumber;  // true
bool result4 = "123".isValidNumber;   // true
bool result5 = "abc".isValidNumber;   // false

// Check integer
bool result6 = "123".isValidInteger;  // true
bool result7 = "12.5".isValidInteger; // false
```

#### Kurdish Input Filter (KurdishOnlyInputFilter)

```dart
// Kurdish only (blocks English)
TextField(
  inputFormatters: const [
    KurdishOnlyInputFilter(allowNumbers: true),
  ],
)

// No English (everything else allowed)
TextField(
  inputFormatters: const [NoEnglishInputFilter()],
)

// Kurdish digits only
TextField(
  inputFormatters: const [KurdishDigitsOnlyInputFilter()],
)
```

#### Ordinal Suffix (KurdishOrdinal)

```dart
// Convert number to ordinal
String result = 1.toKurdishOrdinal;  // "یەکەم"
String result2 = 2.toKurdishOrdinal; // "دووەم"
String result3 = 3.toKurdishOrdinal; // "سێیەم"
String result4 = 5.toKurdishOrdinal; // "پێنجەم"
String result5 = 20.toKurdishOrdinal; // "بیستەم"

// Add suffix to word
String result6 = "پێنج".withOrdinalSuffix; // "پێنجەم"
```

#### Color Names (KurdishColor)

```dart
// Get Kurdish color name
String name = Colors.red.kurdishName;    // "سوور"
String name2 = Colors.blue.kurdishName;  // "شین"
String name3 = Colors.green.kurdishName; // "سەوز"

// Closest color name
String closest = Color(0xFFFF5500).closestKurdishName; // "پرتەقاڵی"

// Get color from Kurdish name
Color? color = KurdishColor.fromName("سوور"); // Color(0xFFFF0000)
```

#### Multi-Language & Directionality (KurdishLangManager)

Users can add their own languages and text direction switches automatically:

```dart
// Create manager
final manager = KurdishLangManager();

// Built-in languages: Kurdish (ckb), Arabic (ar), English (en)
manager.setLanguage('ckb'); // Kurdish
manager.tr('save');         // "پاشەکەوتکردن"

manager.setLanguage('ar');  // Arabic
manager.tr('save');         // "حفظ"

manager.setLanguage('en');  // English
manager.tr('save');         // "Save"

// Text direction changes automatically
manager.textDirection; // TextDirection.rtl or TextDirection.ltr
```

**Adding a custom language:**

```dart
manager.addLanguage(KurdishTranslation(
  languageCode: 'fa',
  languageName: 'فارسی',
  textDirection: TextDirection.rtl,
  translations: {
    'save': 'ذخیره',
    'cancel': 'لغو',
    'ok': 'تأیید',
    // ... more keys
  },
));
```

**Using with InheritedWidget for the entire app:**

```dart
// At the top level
KurdishLangProvider(
  manager: KurdishLangManager(),
  child: MaterialApp(home: MyApp()),
)

// Anywhere in the app
final lang = KurdishLangProvider.of(context);
Text(lang.tr('settings')) // "ڕێکخستنەکان"

// Or shorthand
Text(KurdishLangProvider.tr(context, 'home')) // "ماڵەوە"

// Auto-directionality widget
KurdishDirectionality(child: MyWidget())
```

#### Form Validators (KurdishValidators)

```dart
TextFormField(validator: KurdishValidators.required("This field is required"))
TextFormField(validator: KurdishValidators.email("Invalid email"))
TextFormField(validator: KurdishValidators.phone("Invalid phone"))
TextFormField(validator: KurdishValidators.minLength(3))
TextFormField(validator: KurdishValidators.kurdishOnly())
```

#### Greeting by Time (KurdishGreeting)

```dart
String greeting = KurdishGreeting.now();
// "بەیانی باش" (5-12), "ڕۆژ باش" (12-17)
// "ئێوارە باش" (17-21), "شەو باش" (21-5)

String withName = KurdishGreeting.withName("Dana");
// "ڕۆژ باش، Dana"
```

#### Count Suffix (KurdishCountSuffix)

```dart
String result = 5.withWord("کتێب");  // "5 کتێبەکان"
String result2 = 1.withWord("کتێب"); // "١ کتێب"
String result3 = 0.withWord("کتێب"); // "هیچ کتێبێک"
```

#### Hijri & Kurdish Calendar (KurdishCalendar)

```dart
DateTime now = DateTime.now();

// Gregorian to Hijri
HijriDate hijri = now.toHijri;
String hijriStr = now.toHijriFormat(pattern: 'dd MMMM yyyy');

// Gregorian to Kurdish (Rojhalati)
KurdishDate kd = now.toKurdishCalendar;
String kdStr = now.toKurdishCalendarFormat(pattern: 'dd MMMM yyyy');

// Hijri to Gregorian
DateTime greg = KurdishCalendar.hijriToGregorian(1447, 9, 5);

// Month names
KurdishCalendar.hijriMonthNames;   // [موحەڕەم, سەفەر, ...]
KurdishCalendar.kurdishMonthNames; // [خاکەلێوە, گوڵان, ...]
```

### Example Project

A full example Flutter project is available in the [example](https://github.com/dana-1sherzad/flutter_kurdish_sorani_tools_project) repository.

### Requirements

- Dart SDK: `>=2.19.6 <3.0.0`
- Flutter: `>=1.17.0`

### License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

### Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### Author

Dana Sherzad — [GitHub](https://github.com/dana-1sherzad)

---

## العربية

حزمة Flutter/Dart شاملة توفر أدوات متنوعة للغة الكردية السورانية، بما في ذلك تحويل الأرقام، تنسيق الأرقام، اكتشاف النصوص، إصلاح الروابط، ودعم الخطوط الكردية.

### المميزات

- **تحويل الأرقام إلى كلمات** — تحويل القيم الرقمية إلى نص كردي سوراني
- **تحويل الأرقام** — التحويل بين الأرقام الإنجليزية (الغربية) والكردية (العربية الشرقية)
- **تنسيق الفواصل** — إضافة/إزالة فواصل الآلاف في الأرقام
- **كلمات إلى أرقام** — تحويل الكلمات الكردية إلى قيم رقمية
- **اكتشاف النص الكردي** — التحقق مما إذا كان النص يحتوي على أحرف كردية أو أنه كردي بالكامل
- **إصلاح الروابط** — إصلاح تلقائي لمشاكل المسافات في الروابط
- **اللاحقة الترتيبية** — إزالة اللواحق الترتيبية من الأرقام الكردية
- **الخطوط الكردية** — عائلة خط رابار مدمجة مع TextStyle و Theme سهلة الاستخدام
- **منسق الإدخال** — TextInputFormatter لتنسيق الأرقام المباشر في حقول النص
- **التاريخ والوقت الكردي** — تنسيق التواريخ بأسماء الأيام والأشهر الكردية *(جديد)*
- **محول تخطيط لوحة المفاتيح** — تحويل الإدخال الإنجليزي إلى أحرف كردية *(جديد)*
- **معالج النصوص** — تطبيع الأحرف العربية إلى كردية وإزالة التشكيل *(جديد)*
- **منسق العملات** — تنسيق المبالغ بالدينار العراقي والدولار واليورو وغيرها *(جديد)*
- **اتجاه النص** — اكتشاف تلقائي لـ RTL/LTR بناءً على المحتوى *(جديد)*
- **الجمع** — جمع الكلمات الكردية باللواحق الصحيحة (ەکان/ان) *(جديد)*
- **أدوات النصوص** — Slug، عد الكلمات، اقتطاع، عكس والمزيد *(جديد)*
- **الوقت النسبي** — مثل "٥ دقائق مضت" بالكردية *(جديد)*
- **رقم الهاتف** — تنسيق والتحقق من أرقام الهواتف العراقية *(جديد)*
- **نطاق الأرقام إلى كلمات** — مثل "1-5" → "یەک تا پێنج" *(جديد)*
- **أدوات الجمل** — تقسيم وعد الجمل الكردية *(جديد)*
- **الترجمة الكردية** — ترجمة كلمات النظام (قص، نسخ، لصق...) إلى الكردية *(جديد)*
- **مدقق الأرقام** — التحقق مما إذا كان النص رقماً كردياً/إنجليزياً صالحاً *(جديد)*
- **فلتر الإدخال الكردي** — حظر الأحرف الإنجليزية في حقول النص *(جديد)*
- **اللاحقة الترتيبية** — إضافة لواحق ترتيبية (1→یەکەم, 2→دووەم, 3→سێیەم...) *(جديد)*
- **أسماء الألوان** — أسماء الألوان بالكردية (سوور، شین، زەرد...) *(جديد)*
- **تعدد اللغات** — دعم تعدد اللغات مع اتجاه تلقائي، يمكن للمستخدم إضافة لغته الخاصة *(جديد)*
- **مدقق النماذج** — مدققات جاهزة لـ TextFormField (مطلوب، بريد إلكتروني، هاتف، رقمي...) *(جديد)*
- **التحية حسب الوقت** — بەیانی باش / ڕۆژ باش / ئێوارە باش / شەو باش حسب الساعة *(جديد)*
- **لاحقة العدد** — جمع تلقائي حسب العدد (٥ کتێبەکان، هیچ کتێبێک) *(جديد)*
- **التقويم الهجري والكردي** — التحويل بين الميلادي والهجري والكردي (الروژهلاتي) *(جديد)*

### التثبيت

أضف هذا إلى ملف `pubspec.yaml`:

```yaml
dependencies:
  kurdish_sorani_tools: ^0.1.0
```

ثم نفّذ:

```bash
flutter pub get
```

### الاستخدام

```dart
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
```

#### تحويل الأرقام إلى كلمات كردية

تحويل الأعداد الصحيحة إلى تمثيلها النصي بالكردية السورانية:

```dart
// استخدام طريقة الامتداد
String result = 250.toKurdishString();
// النتيجة: "دوو سەد و پەنجا"

// استخدام الدالة مباشرة
String words = GorinyZhmaraBoNusin(1500);
// النتيجة: "یەک هەزار و پێنج سەد"

// من رقم نصي (يدعم الفواصل)
String? fromStr = GorinyZhmarayNawString("1,000,000");
// النتيجة: "یەک ملیۆن"
```

#### تحويل الأرقام (إنجليزي ↔ كردي)

```dart
// إنجليزي إلى كردي
String kuDigits = convertEnToKu("123");
// النتيجة: "١٢٣"

// كردي إلى إنجليزي
String enDigits = convertKuToEn("١٢٣");
// النتيجة: "123"
```

#### تنسيق الفواصل (فواصل الآلاف)

```dart
// إضافة فواصل
String formatted = DananyFariza(1234567);
// النتيجة: "1,234,567"

// استخدام الامتداد
String result = "1234567".ZyadkrdnyFariza;
// النتيجة: "1,234,567"

// إزالة الفواصل
num number = SrinawayFariza("1,234,567");
// النتيجة: 1234567

// استخدام الامتداد
num value = "1,234,567".LabrdnyFariza;
// النتيجة: 1234567
```

#### DigitFormat (فاصل مخصص)

```dart
String formatted = DigitFormat.convert("1234567", separator: ",");
// النتيجة: "1,234,567"
```

#### DigitToWord (رقم إلى كلمة مع دعم العملة)

```dart
// تحويل إلى كلمة كردية
String word = DigitToWord.toWord("25000", StrType.StrWord);
// النتيجة: "بیست و پێنج هەزار"

// تحويل بالأسلوب الرقمي
String numWord = DigitToWord.toWord("25000", StrType.NumWord);
// النتيجة: "25 هەزار"

// بتنسيق العملة (الدينار العراقي)
String money = DigitToWord.toWord("25000", StrType.StrWord, isMoney: true);
// النتيجة: "بیست و پێنج هەزار دیناری عراقی"
```

#### كلمات إلى أرقام

```dart
// تحويل الكلمات الكردية إلى رقم
int? number = wordsToNumber("بیست و پێنج");
// النتيجة: 25

// تحويل إلى نص مع خيارات اللغة
String? result = wordsToNumberString(
  "بیست و پێنج هەزار",
  digits: DigitLocale.ku,
  addComma: true,
);
// النتيجة: "٢٥,٠٠٠"
```

#### اكتشاف النص الكردي

```dart
// التحقق مما إذا كان النص بالكامل كردياً
bool result = isKurdish("سڵاو");
// النتيجة: true

bool result2 = isKurdish("Hello");
// النتيجة: false

// التحقق مما إذا كان النص يحتوي على أحرف كردية
bool has = hasKurdish("Hello سڵاو");
// النتيجة: true
```

#### إصلاح الروابط

```dart
// إصلاح المسافات في الروابط
String fixedUrl = chakkrdny_link("https://example.com/path with spaces");
// النتيجة: "https://example.com/path%20with%20spaces"
```

#### منسق الإدخال لحقول النص

```dart
TextField(
  inputFormatters: [
    DigitInputFormat(), // ينسق الأرقام تلقائياً بالفواصل
  ],
)
```

#### الخطوط الكردية

تتضمن الحزمة عائلة خط رابار (Rabar 001, Rabar 021, Rabar 022):

```dart
// استخدام KurdishTextStyle
Text(
  "سڵاو",
  style: KurdishTextStyle(
    KurdFont: KurdFont.rabar_21,
    fontSize: 18,
  ),
)

// استخدام KurdishSoraniTheme على مستوى الثيم
MaterialApp(
  theme: ThemeData(
    fontFamily: KurdishSoraniTheme.font(KurdFont: KurdFont.rabar_22),
    package: KurdishSoraniTheme.package,
  ),
)
```

الخطوط المتاحة:

| الثابت | اسم الخط |
| --- | --- |
| `KurdFont.rabar_1` | Rabar 001 |
| `KurdFont.rabar_21` | Rabar 021 |
| `KurdFont.rabar_22` | Rabar 022 |

### مرجع API

#### الدوال

##### `convertEnToKu(String digits)`

تحويل الأرقام الإنجليزية إلى كردية.

```dart
String result = convertEnToKu("2023");
// النتيجة: "٢٠٢٣"
```

##### `convertKuToEn(String digits)`

تحويل الأرقام الكردية إلى إنجليزية.

```dart
String result = convertKuToEn("٢٠٢٣");
// النتيجة: "2023"
```

##### `DananyFariza(Object number)`

إضافة فواصل الآلاف. يقبل int أو String أو double.

```dart
String result = DananyFariza(1500000);
// النتيجة: "1,500,000"

String result2 = DananyFariza("2500000");
// النتيجة: "2,500,000"
```

##### `SrinawayFariza(String number)`

إزالة فواصل الآلاف من النص وإرجاعه كرقم.

```dart
num result = SrinawayFariza("1,500,000");
// النتيجة: 1500000
```

##### `GorinyZhmaraBoNusin(int number, {bool ordinal = false})`

تحويل int إلى كلمات كردية.

```dart
String result = GorinyZhmaraBoNusin(365);
// النتيجة: "سێ سەد و شەست و پێنج"

String result2 = GorinyZhmaraBoNusin(1000000);
// النتيجة: "یەک ملیۆن"
```

##### `GorinyZhmarayNawString(String number, {bool ordinal = false})`

تحويل رقم نصي إلى كلمات كردية. يدعم الفواصل.

```dart
String? result = GorinyZhmarayNawString("1,250");
// النتيجة: "یەک هەزار و دوو سەد و پەنجا"

String? result2 = GorinyZhmarayNawString("0");
// النتيجة: "سفر"
```

##### `wordsToNumber(String words)`

تحويل الكلمات الكردية إلى int.

```dart
int? result = wordsToNumber("سێ هەزار و پێنج سەد");
// النتيجة: 3500
```

##### `wordsToNumberString(String words, {DigitLocale digits, bool addComma})`

تحويل الكلمات الكردية إلى نص منسق مع خيارات اللغة والفواصل.

```dart
String? result = wordsToNumberString(
  "پەنج ملیۆن",
  digits: DigitLocale.ku,
  addComma: true,
);
// النتيجة: "٥,٠٠٠,٠٠٠"

String? result2 = wordsToNumberString(
  "پەنج ملیۆن",
  digits: DigitLocale.en,
  addComma: true,
);
// النتيجة: "5,000,000"
```

##### `isKurdish(String input, [bool isComplex, Pattern? trimPattern])`

التحقق مما إذا كان النص كردياً بالكامل. يُرجع `true` فقط إذا كانت جميع الأحرف كردية.

```dart
bool result = isKurdish("سڵاو چۆنی");
// النتيجة: true

bool result2 = isKurdish("Hello World");
// النتيجة: false

bool result3 = isKurdish("سڵاو Hello");
// النتيجة: false (ليس كردياً بالكامل)
```

##### `hasKurdish(String input, [bool isComplex])`

التحقق مما إذا كان النص يحتوي على حرف كردي واحد على الأقل.

```dart
bool result = hasKurdish("Hello سڵاو World");
// النتيجة: true

bool result2 = hasKurdish("Hello World");
// النتيجة: false
```

##### `chakkrdny_link(String url)`

إصلاح المسافات في الروابط باستبدالها بـ `%20`.

```dart
String result = chakkrdny_link("https://example.com/path with spaces");
// النتيجة: "https://example.com/path%20with%20spaces"
```

##### `removeOrdinalSuffix(String word)`

إزالة اللاحقة الترتيبية من النص الكردي.

```dart
String result = removeOrdinalSuffix("یەکەم");
// النتيجة: "یەک"
```

#### الفئات

##### `DigitFormat`

تنسيق أرقام ثابت بفاصل مخصص.

```dart
// بالفاصلة
String result = DigitFormat.convert("1000000", separator: ",");
// النتيجة: "1,000,000"

// بفاصل مخصص
String result2 = DigitFormat.convert("1000000", separator: ".");
// النتيجة: "1.000.000"
```

##### `DigitInputFormat`

TextInputFormatter لتنسيق الفواصل المباشر في حقول النص.

```dart
TextField(
  keyboardType: TextInputType.number,
  inputFormatters: [
    FilteringTextInputFormatter.digitsOnly,
    DigitInputFormat(), // ينسق تلقائياً بالفواصل أثناء الكتابة
  ],
)
```

##### `DigitToWord`

تحويل الأرقام إلى كلمات كردية بأسلوب رقمي أو نصي، مع دعم العملة.

```dart
// أسلوب نصي (كلمات كاملة)
String result = DigitToWord.toWord("150000", StrType.StrWord);
// النتيجة: "سەد و پەنجا هەزار"

// أسلوب رقمي
String result2 = DigitToWord.toWord("150000", StrType.NumWord);
// النتيجة: "150 هەزار"

// بتنسيق العملة
String result3 = DigitToWord.toWord("150000", StrType.StrWord, isMoney: true);
// النتيجة: "سەد و پەنجا هەزار دیناری عراقی"

// بفاصل مخصص
String result4 = DigitToWord.toWord("1,500,000", StrType.StrWord, separator: ',');
// النتيجة: "یەک ملیۆن و پێنج سەد هەزار"
```

##### `KurdFont`

ثوابت عائلة الخط للاستخدام مع KurdishTextStyle.

```dart
// الخطوط المتاحة:
KurdFont.rabar_1   // Rabar 001
KurdFont.rabar_21  // Rabar 021
KurdFont.rabar_22  // Rabar 022
```

##### `KurdishTextStyle`

TextStyle مع دعم الخط الكردي المدمج. يدعم جميع خصائص TextStyle.

```dart
Text(
  "سڵاو جیهان",
  style: KurdishTextStyle(
    KurdFont: KurdFont.rabar_21,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
)
```

##### `KurdishSoraniTheme`

مساعد الثيم لتعيين الخط الكردي على مستوى التطبيق.

```dart
MaterialApp(
  theme: ThemeData(
    fontFamily: KurdishSoraniTheme.font(KurdFont: KurdFont.rabar_22),
    package: KurdishSoraniTheme.package,
  ),
  home: MyHomePage(),
)
```

#### الامتدادات

##### `IntExtensions` (على `int`)

```dart
// تحويل الرقم إلى كلمات كردية
String result = 999.toKurdishString();
// النتيجة: "نۆ سەد و نەوەد و نۆ"

// بفاصل مخصص
String result2 = 999.toKurdishString(separator: ' و ');
// النتيجة: "نۆ سەد و نەوەد و نۆ"
```

##### `NumberToKurdishWordsString` (على `String`)

```dart
String? result = "500".GorinyZhmaraBoWsha();
// النتيجة: "پێنج سەد"
```

##### `NumberToKurdishWordsInt` (على `int`)

```dart
String? result = 500.GorinyZhmaraBoWsha();
// النتيجة: "پێنج سەد"
```

##### `CommasString` (على `String`)

```dart
// إضافة فواصل
String result = "2500000".ZyadkrdnyFariza;
// النتيجة: "2,500,000"

// إزالة فواصل
num result2 = "2,500,000".LabrdnyFariza;
// النتيجة: 2500000
```

##### `CommasNum` (على `num`)

```dart
String result = 2500000.ZyadkrdnyFariza;
// النتيجة: "2,500,000"
```

##### `WordsToNumber` (على `String`)

```dart
// تحويل إلى int
int? result = "سێ هەزار".convertWordsToNumber();
// النتيجة: 3000

// تحويل إلى نص مع خيارات
String? result2 = "سێ هەزار".convertWordsToNumberString(
  digits: DigitLocale.ku,
  addComma: true,
);
// النتيجة: "٣,٠٠٠"
```

##### `RemoveOrdinalSuffix` (على `String`)

```dart
String result = "یەکەم".withoutOrdinalSuffix;
// النتيجة: "یەک"
```

### الميزات الجديدة (v0.1.0)

#### التاريخ والوقت الكردي (KurdishDateTime)

```dart
// تاريخ اليوم بالكردية
String today = KurdishDateTime.today();
// النتيجة: "هەینی, 29 ئایار 2026"

// تنسيق مخصص
DateTime now = DateTime.now();
String formatted = now.toKurdishDate(pattern: 'EEEE, dd MMMM yyyy');

// أسماء الأيام والأشهر
String day = now.kurdishDayName;    // "هەینی"
String month = now.kurdishMonthName; // "ئایار"
```

#### محول تخطيط لوحة المفاتيح (KurdishKeyboard)

```dart
// إنجليزي إلى كردي
String result = KurdishKeyboard.enToKu("sLaw");
// النتيجة: "سڵاو"

// باستخدام الامتداد
String result2 = "kwrdstan".toKurdishKeyboard;
// النتيجة: "کوردستان"
```

جدول التحويل:

| إنجليزي (صغير) | كردي | إنجليزي (كبير) | كردي |
| --- | --- | --- | --- |
| q | ق | Q | ق |
| w | و | W | وو |
| e | ە | E | ێ |
| r | ر | R | ڕ |
| t | ت | T | ط |
| y | ی | Y | ێ |
| u | ئ | U | ء |
| i | ح | I | ع |
| o | ۆ | O | ؤ |
| p | پ | P | ث |
| a | ا | A | ئا |
| s | س | S | ش |
| d | د | D | ذ |
| f | ف | F | إ |
| g | گ | G | غ |
| h | ه | H | ھ |
| j | ژ | J | چ |
| k | ک | K | ك |
| l | ل | L | ڵ |
| z | ز | Z | ض |
| x | خ | X | ص |
| c | ج | C | چ |
| v | ڤ | V | ظ |
| b | ب | B | ب |
| n | ن | N | ن |
| m | م | M | م |

**كيفية التطبيق على حقل واحد:**

```dart
TextField(
  onChanged: (value) {
    // تحويل الإدخال إلى كردي أثناء الكتابة
    final kurdishText = value.toKurdishKeyboard;
    setState(() {
      result = kurdishText;
    });
  },
)
```

**كيفية التطبيق على المشروع بالكامل (TextInputFormatter مخصص):**

```dart
class KurdishKeyboardFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newText = newValue.text.toKurdishKeyboard;
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

// استخدام على أي حقل نص:
TextField(
  inputFormatters: [KurdishKeyboardFormatter()],
)

// أو لإنشاء ويدجت قابل لإعادة الاستخدام في المشروع بالكامل:
class KurdishTextField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final InputDecoration? decoration;

  const KurdishTextField({super.key, this.onChanged, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [KurdishKeyboardFormatter()],
      onChanged: onChanged,
      decoration: decoration,
    );
  }
}
```

#### معالج النصوص (KurdishNormalizer)

```dart
// تطبيع الأحرف العربية إلى كردية
String result = KurdishNormalizer.normalize("كوردي سوراني");
// النتيجة: "کوردی سورانی"

// التطبيع الكامل
String result2 = "كتـــێب يەكەم".normalizeKurdishAll;
// النتيجة: "کتێب یەکەم"
```

#### منسق العملات (KurdishCurrency)

```dart
// الدينار العراقي
String result = 25000.toIQD();
// النتيجة: "25,000 د.ع"

// بالأرقام الكردية
String result2 = 25000.toIQD(kurdishDigits: true);
// النتيجة: "٢٥,٠٠٠ د.ع"

// عملات أخرى
String result3 = 1500.50.toCurrency(KurdishCurrencyType.usd, decimalPlaces: 2);
// النتيجة: "1,500.50 $"
```

#### اتجاه النص (KurdishTextDirection)

```dart
// اكتشاف الاتجاه
bool isRtl = "سڵاو".isRTL;  // true
bool isLtr = "Hello".isLTR;  // true

// ويدجت الاتجاه التلقائي
KurdishAutoDirection(text: "سڵاو جیهان")
```

#### الجمع (KurdishPlural)

```dart
// جمع محدد
String result = KurdishPlural.pluralDefinite("کتێب");
// النتيجة: "کتێبەکان"

// جمع غير محدد
String result2 = "منداڵ".toPluralIndefinite;
// النتيجة: "منداڵان"

// العودة إلى المفرد
String result3 = "کتێبەکان".toSingular;
// النتيجة: "کتێب"
```

#### أدوات النصوص (KurdishStringUtils)

```dart
// عد الكلمات
int count = "سڵاو جیهان چۆنی".kurdishWordCount;
// النتيجة: 3

// إنشاء slug
String slug = "سڵاو جیهان".toKurdishSlug;
// النتيجة: "سڵاو-جیهان"

// اقتطاع
String truncated = "سڵاو جیهان چۆنی باشی".truncateKurdishWords(2);
// النتيجة: "سڵاو جیهان..."
```

#### الوقت النسبي (KurdishRelativeTime)

```dart
// الماضي
DateTime fiveMinAgo = DateTime.now().subtract(Duration(minutes: 5));
String result = fiveMinAgo.toKurdishRelative;
// النتيجة: "٥ خولەک لەمەوپێش"

// أمس
DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
String result2 = yesterday.toKurdishRelative;
// النتيجة: "دوێنێ"

// المستقبل
DateTime tomorrow = DateTime.now().add(Duration(days: 1));
String result3 = tomorrow.toKurdishRelative;
// النتيجة: "سبەینێ"
```

#### رقم الهاتف (KurdishPhone)

```dart
// تنسيق
String result = KurdishPhone.format("07501234567");
// النتيجة: "0750 123 4567"

// اكتشاف المشغل
String? operator = "07501234567".phoneOperator;
// النتيجة: "کۆڕەک"

// التحقق
bool valid = "07501234567".isValidIraqiPhone;
// النتيجة: true

// التنسيق الدولي
String intl = "07501234567".toInternationalPhone;
// النتيجة: "+9647501234567"
```

#### نطاق الأرقام إلى كلمات (KurdishNumberRange)

```dart
String result = KurdishNumberRange.toWords(1, 5);
// النتيجة: "یەک تا پێنج"

String? result2 = "10-20".toKurdishRange;
// النتيجة: "ده تا بیست"
```

#### أدوات الجمل (KurdishSentence)

```dart
List<String> sentences = "سڵاو. چۆنی؟ باشم.".kurdishSentences;
// النتيجة: ["سڵاو", "چۆنی", "باشم"]

int count = "سڵاو. چۆنی؟ باشم.".kurdishSentenceCount;
// النتيجة: 3
```

#### الترجمة الكردية (KurdishMaterialLocalizations)

```dart
// أضف إلى MaterialApp لترجمة كلمات النظام إلى الكردية
MaterialApp(
  locale: kurdishLocale,
  supportedLocales: const [kurdishLocale, Locale('en', 'US')],
  localizationsDelegates: kurdishLocalizationsDelegates,
)
// الآن Cut/Copy/Paste تصبح: بڕین/لەبەرگرتنەوە/لکاندن
```

#### مدقق الأرقام (KurdishNumberValidator)

```dart
bool result = "١٢٣٤٥".isKurdishNumber;  // true
bool result2 = "12345".isKurdishNumber;   // false
bool result3 = "١٢٣".isValidNumber;      // true
bool result4 = "abc".isValidNumber;       // false
```

#### فلتر الإدخال الكردي (KurdishOnlyInputFilter)

```dart
// كردي فقط (يحظر الإنجليزية)
TextField(
  inputFormatters: const [
    KurdishOnlyInputFilter(allowNumbers: true),
  ],
)

// بدون إنجليزية
TextField(
  inputFormatters: const [NoEnglishInputFilter()],
)
```

#### اللاحقة الترتيبية (KurdishOrdinal)

```dart
String result = 1.toKurdishOrdinal;  // "یەکەم"
String result2 = 2.toKurdishOrdinal; // "دووەم"
String result3 = 3.toKurdishOrdinal; // "سێیەم"
String result4 = "پێنج".withOrdinalSuffix; // "پێنجەم"
```

#### أسماء الألوان (KurdishColor)

```dart
String name = Colors.red.kurdishName;    // "سوور"
String name2 = Colors.blue.kurdishName;  // "شین"
String closest = Color(0xFFFF5500).closestKurdishName; // "پرتەقاڵی"
Color? color = KurdishColor.fromName("سوور"); // Color(0xFFFF0000)
```

#### تعدد اللغات والاتجاه (KurdishLangManager)

يمكن للمستخدم إضافة لغته الخاصة ويتغير اتجاه النص تلقائياً:

```dart
// إنشاء المدير
final manager = KurdishLangManager();

// اللغات المدمجة: كردي (ckb)، عربي (ar)، إنجليزي (en)
manager.setLanguage('ckb');
manager.tr('save'); // "پاشەکەوتکردن"

manager.setLanguage('ar');
manager.tr('save'); // "حفظ"

manager.setLanguage('en');
manager.tr('save'); // "Save"

// اتجاه النص يتغير تلقائياً
manager.textDirection; // TextDirection.rtl أو TextDirection.ltr
```

**إضافة لغة مخصصة:**

```dart
manager.addLanguage(KurdishTranslation(
  languageCode: 'fa',
  languageName: 'فارسی',
  textDirection: TextDirection.rtl,
  translations: {
    'save': 'ذخیره',
    'cancel': 'لغو',
    // ... المزيد
  },
));
```

**الاستخدام مع InheritedWidget للتطبيق بالكامل:**

```dart
KurdishLangProvider(
  manager: KurdishLangManager(),
  child: MaterialApp(home: MyApp()),
)

// في أي مكان
Text(KurdishLangProvider.tr(context, 'home'))

// ويدجت الاتجاه التلقائي
KurdishDirectionality(child: MyWidget())
```

#### مدقق النماذج (KurdishValidators)

```dart
TextFormField(validator: KurdishValidators.required("هذا الحقل مطلوب"))
TextFormField(validator: KurdishValidators.email("البريد الإلكتروني غير صالح"))
TextFormField(validator: KurdishValidators.phone("رقم الهاتف غير صالح"))
TextFormField(validator: KurdishValidators.minLength(3))
```

#### التحية حسب الوقت (KurdishGreeting)

```dart
String greeting = KurdishGreeting.now();
// "بەیانی باش" (5-12), "ڕۆژ باش" (12-17)
// "ئێوارە باش" (17-21), "شەو باش" (21-5)

String withName = KurdishGreeting.withName("دانا");
// "ڕۆژ باش، دانا"
```

#### لاحقة العدد (KurdishCountSuffix)

```dart
String result = 5.withWord("کتێب");  // "5 کتێبەکان"
String result2 = 0.withWord("کتێب"); // "هیچ کتێبێک"
```

#### التقويم الهجري والكردي (KurdishCalendar)

```dart
DateTime now = DateTime.now();

// ميلادي إلى هجري
HijriDate hijri = now.toHijri;
String hijriStr = now.toHijriFormat(pattern: 'dd MMMM yyyy');

// ميلادي إلى كردي (روژهلاتي)
KurdishDate kd = now.toKurdishCalendar;
String kdStr = now.toKurdishCalendarFormat(pattern: 'dd MMMM yyyy');

// أسماء الأشهر
KurdishCalendar.hijriMonthNames;   // [موحەڕەم, سەفەر, ...]
KurdishCalendar.kurdishMonthNames; // [خاکەلێوە, گوڵان, ...]
```

### مشروع نموذجي

مشروع Flutter نموذجي كامل متاح في مستودع [المثال](https://github.com/dana-1sherzad/flutter_kurdish_sorani_tools_project).

### المتطلبات

- Dart SDK: `>=2.19.6 <3.0.0`
- Flutter: `>=1.17.0`

### الرخصة

هذا المشروع مرخص بموجب رخصة MIT — انظر ملف [LICENSE](LICENSE) للتفاصيل.

### المساهمة

المساهمات مرحب بها! لا تتردد في إرسال Pull Request.

### المؤلف

دانا شيرزاد — [GitHub](https://github.com/dana-1sherzad)

## Changelog | گۆڕانکارییەکان | سجل التغييرات

### v0.1.0

#### کوردی

- زیادکردنی بەروار و کاتی کوردی (KurdishDateTime)
- زیادکردنی گۆڕینی لەیاوتی کیبۆرد (KurdishKeyboard)
- زیادکردنی نۆرمالکردنی دەق (KurdishNormalizer)
- زیادکردنی فۆرماتی دراو (KurdishCurrency)
- زیادکردنی دیاریکردنی ئاڕاستەی دەق (KurdishTextDirection)
- زیادکردنی کۆکردنەوەی وشە (KurdishPlural)
- زیادکردنی ئامرازەکانی سترینگ (KurdishStringUtils)
- زیادکردنی کاتی نسبی (KurdishRelativeTime)
- زیادکردنی فۆرماتی ژمارەی مۆبایل (KurdishPhone)
- زیادکردنی گۆڕینی ڕیزی ژمارە بۆ وشە (KurdishNumberRange)
- زیادکردنی ئامرازەکانی ڕستە (KurdishSentence)
- زیادکردنی لۆکاڵایزەیشنی کوردی (KurdishMaterialLocalizations)
- زیادکردنی پشکنینی ڕاستی ژمارە (KurdishNumberValidator)
- زیادکردنی فلتەری ئینپووتی کوردی (KurdishOnlyInputFilter)
- زیادکردنی پاشگری ڕێزبەندی (KurdishOrdinal)
- زیادکردنی ناوی ڕەنگەکان بە کوردی (KurdishColor)

#### English

- Added Kurdish Date/Time formatter (KurdishDateTime)
- Added Keyboard Layout Converter (KurdishKeyboard)
- Added Text Normalizer (KurdishNormalizer)
- Added Currency Formatter (KurdishCurrency)
- Added Text Direction auto-detection (KurdishTextDirection)
- Added Pluralization support (KurdishPlural)
- Added String Utilities (KurdishStringUtils)
- Added Relative Time (KurdishRelativeTime)
- Added Phone Number formatter/validator (KurdishPhone)
- Added Number Range to Words (KurdishNumberRange)
- Added Sentence Utilities (KurdishSentence)
- Added Kurdish Material Localizations (KurdishMaterialLocalizations)
- Added Number Validator (KurdishNumberValidator)
- Added Kurdish Input Filter (KurdishOnlyInputFilter)
- Added Ordinal Suffix (KurdishOrdinal)
- Added Color Names (KurdishColor)

#### العربية

- إضافة منسق التاريخ والوقت الكردي (KurdishDateTime)
- إضافة محول تخطيط لوحة المفاتيح (KurdishKeyboard)
- إضافة معالج النصوص (KurdishNormalizer)
- إضافة منسق العملات (KurdishCurrency)
- إضافة اكتشاف اتجاه النص (KurdishTextDirection)
- إضافة دعم الجمع (KurdishPlural)
- إضافة أدوات النصوص (KurdishStringUtils)
- إضافة الوقت النسبي (KurdishRelativeTime)
- إضافة منسق/مدقق أرقام الهاتف (KurdishPhone)
- إضافة نطاق الأرقام إلى كلمات (KurdishNumberRange)
- إضافة أدوات الجمل (KurdishSentence)
- إضافة الترجمة الكردية للنظام (KurdishMaterialLocalizations)
- إضافة مدقق الأرقام (KurdishNumberValidator)
- إضافة فلتر الإدخال الكردي (KurdishOnlyInputFilter)
- إضافة اللاحقة الترتيبية (KurdishOrdinal)
- إضافة أسماء الألوان بالكردية (KurdishColor)

### v0.0.9

- زیادکردنی میسۆد بۆ گۆڕینی ژمارە بۆ نووسینی کوردی
- جیاکردنەوەی ژمارە بە فاریزە
- دیاریکردنی ژمارە وەک پارەی عراقی
- گۆڕینی ژمارە لە کوردی بۆ ئینگلیزی و بە پێچەوانە
- کوردی لەخۆ گرتووە؟
- چاککردنی بەستەر
- زیادکردنی ستایل و فۆنتی کوردی

