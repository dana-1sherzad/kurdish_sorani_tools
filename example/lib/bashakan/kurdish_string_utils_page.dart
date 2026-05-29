import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishStringUtilsPage extends StatelessWidget {
  const KurdishStringUtilsPage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Word count
int count = "سڵاو جیهان چۆنی".kurdishWordCount; // 3

// Char count
int chars = "سڵاو".kurdishCharCount; // 4

// Create URL slug
String slug = "سڵاو جیهان".toKurdishSlug;
// "سڵاو-جیهان"

// Truncate by words
String truncated = "سڵاو جیهان چۆنی باشی".truncateKurdishWords(2);
// "سڵاو جیهان..."

// Reverse text
String reversed = "سڵاو".reverseKurdish;

// Remove numbers from text
String noNums = "سڵاو ١٢٣ جیهان".removeNumbers;
// "سڵاو  جیهان"

// Extract only numbers
String nums = "سڵاو ١٢٣ جیهان ٤٥٦".extractNumbers;
// "١٢٣ ٤٥٦"
''';

  @override
  Widget build(BuildContext context) {
    const text = 'سڵاو جیهان ئەمە تاقیکردنەوەیەکی نوێیە بۆ ئامرازەکانی سترینگ';
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('string_utils')),
        actions: [
          infoButton(context, title: 'KurdishStringUtils', code: _code)
        ],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              _card(langManager.tr('text'), text),
              _card(langManager.tr('word_count'),
                  text.kurdishWordCount.toString()),
              _card(langManager.tr('char_count'),
                  text.kurdishCharCount.toString()),
              _card(langManager.tr('truncate'), text.truncateKurdishWords(3)),
              _card('Slug', text.toKurdishSlug),
              _card(langManager.tr('reverse'), text.reverseKurdish),
              _card(langManager.tr('remove_numbers'),
                  'سڵاو ١٢٣ جیهان'.removeNumbers),
              _card(langManager.tr('extract_numbers'),
                  'سڵاو ١٢٣ جیهان ٤٥٦'.extractNumbers),
            ])),
      ),
    );
  }

  Widget _card(String title, String value) => Card(
        margin: const EdgeInsets.only(bottom: 12),
        child: ListTile(
            title: Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(value, style: const TextStyle(fontSize: 16))),
      );
}
