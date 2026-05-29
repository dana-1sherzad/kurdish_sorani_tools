import '/src/constants/add_ordinal_suffix/constants.dart';

/// پاشگری ڕێزبەندی زیاد دەکات بۆ ژمارەکان
String addOrdinalSuffix(String number) {
  if (number.endsWith(lastFaChar)) {
    return number + ordinalSuffixSeparate;
  }
  if (number.endsWith(three)) {
    return number.substring(0, number.length - 2) + third;
  }
  return number + ordinalSuffix;
}

extension AddOrdinalSuffix on String {
  // TODO: دانانی چێککردنی زمانی کوردی
  String get withOrdinalSuffix => addOrdinalSuffix(this);
}
