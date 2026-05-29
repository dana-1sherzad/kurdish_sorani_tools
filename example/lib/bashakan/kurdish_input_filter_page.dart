import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishInputFilterPage extends StatelessWidget {
  const KurdishInputFilterPage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Kurdish only (blocks English letters)
TextField(
  inputFormatters: const [
    KurdishOnlyInputFilter(
      allowNumbers: true,   // allow numbers too
      allowSpaces: true,    // allow spaces
      allowPunctuation: true, // allow punctuation
    ),
  ],
)

// No English (blocks only English, allows everything else)
TextField(
  inputFormatters: const [NoEnglishInputFilter()],
)

// Kurdish digits only (١٢٣٤٥٦٧٨٩٠)
TextField(
  inputFormatters: const [KurdishDigitsOnlyInputFilter()],
)
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('input_filter')),
        actions: [
          infoButton(context, title: 'KurdishInputFilter', code: _code)
        ],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              Text(langManager.tr('kurdish_only'),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                  inputFormatters: const [
                    KurdishOnlyInputFilter(allowNumbers: true)
                  ],
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: langManager.tr('type_kurdish_only'))),
              const SizedBox(height: 24),
              Text(langManager.tr('no_english'),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                  inputFormatters: const [NoEnglishInputFilter()],
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: langManager.tr('english_blocked'))),
              const SizedBox(height: 24),
              Text(langManager.tr('kurdish_digits_only'),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                  inputFormatters: const [KurdishDigitsOnlyInputFilter()],
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: langManager.tr('only_digits'))),
            ])),
      ),
    );
  }
}
