import '/src/constants/digits/constants.dart';

/// ژمارەیەکی ئینگلیزی بنوووسە بۆت دەکات بە ژمارەی کوردی
String convertEnToKu(String digits) {
  for (var i = 0; i < 10; i++) {
    digits = digits.replaceAll('$i', kuNumber[i]);
  }
  return digits;
}

/// ژمارەیەکی کوردی بنووسە بۆت دەکات بە ژمارەیەکی ئینگلیزی
String convertKuToEn(String digits) {
  for (var i = 0; i < 10; i++) {
    digits = digits.replaceAll(kuNumber[i], '$i');
  }
  return digits;
}
