// by dana sherzad
extension IntExtensions on int {
  /// goriny zhmara bo nusin
  String toKurdishString({String separator = ' و '}) {
    return _toKurdishString(this, separator);
  }
}

final _tensNames = [
  '',
  'ده',
  'بیست',
  'سی',
  'چل',
  'پەنجا',
  'شەست',
  'حەفتا',
  'هەشتا',
  'نەوەت'
];

final _numNames = [
  '',
  'یەک',
  'دوو',
  'سێ',
  'چوار',
  'پێنج',
  'شەش',
  'حەفت',
  'هەشت',
  'نۆ',
  'ده',
  'یازده',
  'دوازده',
  'سێزده ',
  'چارده',
  'پازده',
  'شازده',
  'حەفدە',
  'هەژدە',
  'نۆزدە'
];

final _hundredNames = [
  'سەت',
  'دوو سەت',
  'سێ سەت',
  'چوار سەت',
  'پێنج سەت',
  'شەش سەت',
  'حەفت سەت',
  'هەشت سەت',
  'نۆ سەت'
];

List<String> _convertLessThanOneThousand(int number) {
  int n = number;
  final parts = <String>[];

  if (n % 100 < 20) {
    final mod = n % 100;
    if (mod != 0) {
      parts.add(_numNames[mod]);
    }
    n ~/= 100;
  } else {
    final mod0 = n % 10;
    if (mod0 != 0) {
      parts.add(_numNames[mod0]);
    }
    n ~/= 10;
    final mod1 = n % 10;
    if (mod1 != 0) {
      parts.add(_tensNames[mod1]);
    }
    n ~/= 10;
  }
  if (n > 0) {
    parts.add(_hundredNames[n - 1]);
  }

  return parts.reversed.toList();
}

String _toKurdishString(int number, String separator) {
  if (number == 0) {
    return 'سفر';
  }

  final parts = <String>[];

  final sNumber = number.toString().padLeft(12, '0');
  final billions = int.parse(sNumber.substring(0, 3));
  final millions = int.parse(sNumber.substring(3, 6));
  final hundredThousands = int.parse(sNumber.substring(6, 9));
  final thousands = int.parse(sNumber.substring(9, 12));

  if (billions != 0) {
    final b = _convertLessThanOneThousand(billions).join(separator);
    parts.add('$b ملیارد');
  }

  if (millions > 0) {
    final m = _convertLessThanOneThousand(millions).join(separator);
    parts.add('$m ملیۆن');
  }

  if (hundredThousands > 0) {
    final t = _convertLessThanOneThousand(hundredThousands).join(separator);
    if (t.isNotEmpty) {
      parts.add('$t هەزار');
    }
  }

  final s = _convertLessThanOneThousand(thousands);
  if (s.isNotEmpty) {
    parts.add(s.join(separator));
  }

  final result = parts.join(separator);
  return result;
}
