import '/src/constants/commas/constants.dart';
import '/src/core/digits/digits.dart';
import '../is_kurdish/is_persian.dart';

/// ژمارەیەک بە شێوەی سترینگ یان ئینتیجەر وەردەگرێ وە فاریزەیەکی بۆ دادەنێت وەک جیاکەرەوە
/// تێبینی: ژمارەی کوردی دەگؤڕێت بۆ ئینگلیزی
String DananyFariza(Object number) {
  if (number is! int && number is! String && number is! double) {
    throw Exception(exception);
  }
  final numberStr = number.runtimeType is String
      ? number as String //
      : number.toString();
  final enNumberStr =
      isKurdish(numberStr) ? convertKuToEn(numberStr) : numberStr;
  final decimalNumber = enNumberStr.split('.');
  final integerPart = decimalNumber[0].replaceAllMapped(
    RegExp(DananyFarizaRegExp),
    (matched) => '${matched[1]},',
  );
  String decimalPart;
  try {
    decimalPart = '.${decimalNumber[1]}';
  } on RangeError catch (_) {
    decimalPart = '';
  }
  return integerPart + decimalPart;
}

///ببە شێوەی سترینگ ژمارەیەک بنووسە وە هەموو فاریزەکانی ناوی دەسڕینەوە
num SrinawayFariza(String number) {
  if (number.contains(',')) {
    number = number.replaceAll(RegExp(LabrdnyFarizaRegExp), '');
  }
  return num.parse(number);
}

extension CommasString on String {
  String get ZyadkrdnyFariza => DananyFariza(this);

  num get LabrdnyFariza => SrinawayFariza(this);
}

extension CommasNum on num {
  String get ZyadkrdnyFariza => DananyFariza(this);
}
