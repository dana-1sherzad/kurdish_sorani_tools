import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/nav_bar.dart';

class DocsPage extends StatelessWidget {
  const DocsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StudioNavBar(currentIndex: 3),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Documentation',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Get started with kurdish_sorani_tools',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 32),

                _section('Installation', '''
dependencies:
  kurdish_sorani_tools: ^0.1.0'''),

                _section('Import', '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';'''),

                _section('Number to Words', '''
String words = 250.toKurdishString();
// "دوو سەد و پەنجا"

String words2 = GorinyZhmaraBoNusin(1500);
// "یەک هەزار و پێنج سەد"'''),

                _section('Digit Conversion', '''
String ku = convertEnToKu("123"); // "١٢٣"
String en = convertKuToEn("١٢٣"); // "123"'''),

                _section('Kurdish Date/Time', '''
String today = KurdishDateTime.today();
// "هەینی, 29 ئایار 2026"

String relative = DateTime.now()
  .subtract(Duration(minutes: 5)).toKurdishRelative;
// "٥ خولەک لەمەوپێش"'''),

                _section(
                  'Calendar (Hijri & Kurdish)',
                  '''
HijriDate hijri = DateTime.now().toHijri;
String hijriStr = DateTime.now().toHijriFormat(pattern: 'dd MMMM yyyy');

KurdishDate kd = DateTime.now().toKurdishCalendar;
String kdStr = DateTime.now().toKurdishCalendarFormat(pattern: 'dd MMMM yyyy');''',
                ),

                _section('Phone Number', '''
String formatted = "07501234567".formatPhone; // "0750 123 4567"
String? op = "07501234567".phoneOperator;     // "کۆڕەک"
bool valid = "07501234567".isValidIraqiPhone;  // true'''),

                _section('Currency', '''
String iqd = 25000.toIQD();                    // "25,000 د.ع"
String usd = 1500.toCurrency(KurdishCurrencyType.usd); // "1,500 \$"'''),

                _section('Multi-Language', '''
final langManager = KurdishLangManager();
langManager.setLanguage('en'); // or 'ckb', 'ar'
langManager.tr('save'); // "Save" / "پاشەکەوتکردن" / "حفظ"

// System UI translation
kurdishLocalizationLanguageGetter = () => langManager.currentLanguage;'''),

                _section('Keyboard Converter', '''
String result = "sLaw".toKurdishKeyboard; // "سڵاو"
String result2 = "kwrdstan".toKurdishKeyboard; // "کوردستان"'''),

                _section('Form Validators', '''
TextFormField(validator: KurdishValidators.required())
TextFormField(validator: KurdishValidators.email())
TextFormField(validator: KurdishValidators.phone())
TextFormField(validator: KurdishValidators.minLength(3))'''),

                _section('Localization Setup', '''
MaterialApp(
  localizationsDelegates: kurdishLocalizationsDelegates,
  supportedLocales: [Locale('ku', 'IQ'), Locale('en', 'US'), Locale('ar')],
)'''),

                const SizedBox(height: 32),
                const Divider(),
                const SizedBox(height: 16),
                const Text(
                  'Full documentation: dana-sherzad.com/projects/dana-player',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _section(String title, String code) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 12),
      Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SelectableText(
              code.trim(),
              style: const TextStyle(
                fontFamily: 'monospace',
                color: Colors.greenAccent,
                fontSize: 13,
                height: 1.6,
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Builder(
              builder: (ctx) => IconButton(
                icon: const Icon(Icons.copy, size: 18, color: Colors.white54),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: code.trim()));
                  ScaffoldMessenger.of(ctx).showSnackBar(
                    const SnackBar(
                      content: Text('Copied!'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 24),
    ],
  );
}
