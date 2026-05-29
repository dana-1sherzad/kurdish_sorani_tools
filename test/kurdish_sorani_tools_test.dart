import 'package:flutter_test/flutter_test.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

void main() {
  group('Digit Conversion', () {
    test('English to Kurdish', () {
      expect(convertEnToKu('123'), '١٢٣');
      expect(convertEnToKu('0'), '٠');
      expect(convertEnToKu('9876543210'), '٩٨٧٦٥٤٣٢١٠');
    });

    test('Kurdish to English', () {
      expect(convertKuToEn('١٢٣'), '123');
      expect(convertKuToEn('٠'), '0');
    });
  });

  group('Number to Word', () {
    test('toKurdishString extension', () {
      expect(0.toKurdishString(), 'سفر');
      expect(1.toKurdishString(), 'یەک');
      expect(10.toKurdishString(), 'ده');
      expect(250.toKurdishString(), contains('دوو سەد'));
    });
  });

  group('Commas', () {
    test('DananyFariza adds commas', () {
      expect(DananyFariza(1000), '1,000');
      expect(DananyFariza(1234567), '1,234,567');
    });

    test('SrinawayFariza removes commas', () {
      expect(SrinawayFariza('1,000'), 1000);
      expect(SrinawayFariza('1,234,567'), 1234567);
    });
  });

  group('isKurdish', () {
    test('detects Kurdish text', () {
      expect(isKurdish('سڵاو'), true);
      expect(isKurdish('Hello'), false);
      expect(isKurdish('سڵاو Hello'), false);
    });

    test('hasKurdish detects any Kurdish', () {
      expect(hasKurdish('Hello سڵاو'), true);
      expect(hasKurdish('Hello World'), false);
    });
  });

  group('URL Fix', () {
    test('fixes whitespace in URLs', () {
      expect(chakkrdny_link('https://example.com/path with spaces'),
          'https://example.com/path%20with%20spaces');
    });

    test('returns non-URL unchanged', () {
      expect(chakkrdny_link('not a url'), 'not a url');
    });
  });

  group('KurdishNormalizer', () {
    test('normalizes Arabic to Kurdish', () {
      expect(KurdishNormalizer.normalize('كوردي'), 'کوردی');
      expect(KurdishNormalizer.normalize('يەكەم'), 'یەکەم');
    });

    test('removes diacritics', () {
      expect(KurdishNormalizer.removeDiacritics('كُردِي'), 'كردي');
    });

    test('removes tatweel', () {
      expect(KurdishNormalizer.removeTatweel('كتـــێب'), 'كتێب');
    });
  });

  group('KurdishPlural', () {
    test('definite plural', () {
      expect(KurdishPlural.pluralDefinite('کتێب'), 'کتێبەکان');
      expect(KurdishPlural.pluralDefinite('ماڵ'), 'ماڵەکان');
    });

    test('indefinite plural', () {
      expect(KurdishPlural.pluralIndefinite('منداڵ'), 'منداڵان');
    });

    test('singular from plural', () {
      expect(KurdishPlural.singular('کتێبەکان'), 'کتێب');
    });

    test('isPlural check', () {
      expect(KurdishPlural.isPlural('کتێبەکان'), true);
      expect(KurdishPlural.isPlural('کتێب'), false);
    });
  });

  group('KurdishPhone', () {
    test('format phone number', () {
      expect(KurdishPhone.format('07501234567'), '0750 123 4567');
    });

    test('validate phone', () {
      expect(KurdishPhone.isValid('07501234567'), true);
      expect(KurdishPhone.isValid('1234'), false);
      expect(KurdishPhone.isValid('09001234567'), false);
    });

    test('detect operator', () {
      expect(KurdishPhone.getOperator('07501234567'), 'کۆڕەک');
      expect(KurdishPhone.getOperator('07701234567'), 'ئاسیاسێل');
      expect(KurdishPhone.getOperator('07801234567'), 'زەین');
      expect(KurdishPhone.getOperator('07901234567'), 'فاستلینک');
    });

    test('international format', () {
      expect(KurdishPhone.toInternational('07501234567'), '+9647501234567');
    });
  });

  group('KurdishKeyboard', () {
    test('English to Kurdish', () {
      expect(KurdishKeyboard.enToKu('sLaw'), 'سڵاو');
      expect(KurdishKeyboard.enToKu('kwrdstan'), 'کوردستان');
    });
  });

  group('KurdishOrdinal', () {
    test('number to ordinal', () {
      expect(KurdishOrdinal.fromNumber(1), 'یەکەم');
      expect(KurdishOrdinal.fromNumber(2), 'دووەم');
      expect(KurdishOrdinal.fromNumber(3), 'سێیەم');
      expect(KurdishOrdinal.fromNumber(10), 'دەیەم');
    });
  });

  group('KurdishGreeting', () {
    test('morning greeting', () {
      expect(KurdishGreeting.fromHour(8), 'بەیانی باش');
    });

    test('afternoon greeting', () {
      expect(KurdishGreeting.fromHour(14), 'ڕۆژ باش');
    });

    test('evening greeting', () {
      expect(KurdishGreeting.fromHour(19), 'ئێوارە باش');
    });

    test('night greeting', () {
      expect(KurdishGreeting.fromHour(23), 'شەو باش');
    });
  });

  group('KurdishCalendar', () {
    test('gregorian to hijri', () {
      final hijri = KurdishCalendar.gregorianToHijri(DateTime(2024, 3, 11));
      expect(hijri.year, greaterThan(1440));
      expect(hijri.month, greaterThan(0));
      expect(hijri.day, greaterThan(0));
    });

    test('gregorian to kurdish', () {
      final kd = KurdishCalendar.gregorianToKurdish(DateTime(2024, 3, 21));
      expect(kd.year, greaterThan(2700));
      expect(kd.month, 1); // First month of Kurdish year
    });
  });

  group('KurdishNumberValidator', () {
    test('isKurdishNumber', () {
      expect(KurdishNumberValidator.isKurdishNumber('١٢٣'), true);
      expect(KurdishNumberValidator.isKurdishNumber('123'), false);
    });

    test('isNumber', () {
      expect(KurdishNumberValidator.isNumber('123'), true);
      expect(KurdishNumberValidator.isNumber('١٢٣'), true);
      expect(KurdishNumberValidator.isNumber('abc'), false);
    });
  });

  group('KurdishStringUtils', () {
    test('word count', () {
      expect(KurdishStringUtils.wordCount('سڵاو جیهان'), 2);
      expect(KurdishStringUtils.wordCount(''), 0);
    });

    test('toSlug', () {
      expect(KurdishStringUtils.toSlug('سڵاو جیهان'), 'سڵاو-جیهان');
    });

    test('truncateWords', () {
      expect(KurdishStringUtils.truncateWords('سڵاو جیهان چۆنی', 2),
          'سڵاو جیهان...');
    });
  });

  group('KurdishRelativeTime', () {
    test('just now', () {
      final now = DateTime.now();
      expect(KurdishRelativeTime.fromDateTime(now), 'ئێستا');
    });

    test('minutes ago', () {
      final fiveMinAgo = DateTime.now().subtract(const Duration(minutes: 5));
      expect(KurdishRelativeTime.fromDateTime(fiveMinAgo), contains('خولەک'));
    });

    test('yesterday', () {
      final yesterday =
          DateTime.now().subtract(const Duration(days: 1, hours: 1));
      expect(KurdishRelativeTime.fromDateTime(yesterday), 'دوێنێ');
    });
  });

  group('KurdishCountSuffix', () {
    test('count with word', () {
      expect(KurdishCountSuffix.count(0, 'کتێب'), 'هیچ کتێبێک');
      expect(KurdishCountSuffix.count(1, 'کتێب'), '١ کتێب');
      expect(KurdishCountSuffix.count(5, 'کتێب'), '5 کتێبەکان');
    });
  });

  group('KurdishDateTime', () {
    test('month names exist', () {
      expect(KurdishDateTime.monthNames.length, 12);
      expect(KurdishDateTime.dayNames.length, 7);
    });

    test('format date', () {
      final date = DateTime(2024, 1, 15);
      final formatted = KurdishDateTime.format(date, pattern: 'dd MMMM yyyy');
      expect(formatted, contains('کانوونی دووەم'));
      expect(formatted, contains('2024'));
    });
  });

  group('KurdishNumberRange', () {
    test('toWords', () {
      final result = KurdishNumberRange.toWords(1, 5);
      expect(result, contains('تا'));
    });

    test('parseAndConvert', () {
      final result = KurdishNumberRange.parseAndConvert('1-5');
      expect(result, isNotNull);
      expect(result, contains('تا'));
    });
  });
}
