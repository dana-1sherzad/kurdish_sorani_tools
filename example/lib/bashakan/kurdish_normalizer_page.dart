import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishNormalizerPage extends StatelessWidget {
  const KurdishNormalizerPage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Normalize Arabic chars to Kurdish
String result = KurdishNormalizer.normalize("كوردي");
// "کوردی"

// Remove diacritics
String result2 = "كُردِي".removeDiacritics;

// Remove tatweel
String result3 = "كتـــێب".removeTatweel;
// "كتێب"

// Full normalization (all at once)
String result4 = "كتـــێب يەكەم".normalizeKurdishAll;
// "کتێب یەکەم"

// Using extension
String normalized = "يەكەم".normalizeKurdish;
// "یەکەم"
''';

  @override
  Widget build(BuildContext context) {
    const examples = ['كوردي سوراني', 'يەكەم', 'آزادي', 'كتـــێب'];
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('normalizer')),
        actions: [infoButton(context, title: 'KurdishNormalizer', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              for (final ex in examples)
                Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${langManager.tr("before")}: $ex',
                                  style: const TextStyle(color: Colors.red)),
                              const SizedBox(height: 8),
                              Text(
                                  '${langManager.tr("after")}: ${ex.normalizeKurdishAll}',
                                  style: const TextStyle(color: Colors.green)),
                            ]))),
            ])),
      ),
    );
  }
}
