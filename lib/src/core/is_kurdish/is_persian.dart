import '../../constants/is_kurdish/constants.dart';

/// چێکی ئینپووتەکە دەکات بزانی دەقەکە کوردیە یاخوود نا
/// ئەنجامی true دەگەڕێنێتەوە گەر تەواوی دەقەکە کوردی بێت
/// وە گەر بەلایەنی کەمەوە پیتێکی زمانێکی تربێ ئەنجامەکە دەبێتە false
bool isKurdish(String input, [bool isComplex = false, Pattern? trimPattern]) {
  trimPattern ??= RegExp(trimPatternRegExp);
  var rawText = input.replaceAll(trimPattern, '');
  var kuRegExp = isComplex ? kuComplexText : kuText;
  return RegExp('^[$kuRegExp]+\$').hasMatch(rawText);
}

/// چێکی ئینپووتەکە دەکات بزانی هیچ پیتێکی کوردی تیایە یاخوود نا
/// ئەگەر تەنانەت یەک پیتی کوردیشی تیابوو ئەنجامی true دەگەڕێنێتەوە ئەگەرنا ئەنجامی false دەگەڕێنێتەوە
bool hasKurdish(String input, [bool isComplex = false]) {
  var kuRegExp = isComplex ? kuComplexText : kuText;
  return RegExp('[$kuRegExp]').hasMatch(input);
}
