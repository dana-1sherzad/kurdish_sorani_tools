import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishPluralPage extends StatelessWidget {
  const KurdishPluralPage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Definite plural (ەکان)
String result = KurdishPlural.pluralDefinite("کتێب");
// "کتێبەکان"

// Indefinite plural (ان)
String result2 = "منداڵ".toPluralIndefinite;
// "منداڵان"

// Back to singular
String result3 = "کتێبەکان".toSingular;
// "کتێب"

// Check if plural
bool isP = "کتێبەکان".isPlural; // true

// Count with word
String result4 = KurdishPlural.count(5, "کتێب");
// "5 کتێبەکان"

// Using extension
String plural = "ماڵ".toPlural; // "ماڵەکان"
''';

  @override
  Widget build(BuildContext context) {
    final words = ['کتێب', 'ماڵ', 'منداڵ', 'قوتابی', 'ئۆتۆمبێل', 'دەریا'];
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('plural')),
        actions: [infoButton(context, title: 'KurdishPlural', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              for (final word in words)
                Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${langManager.tr("singular")}: $word',
                                  style: const TextStyle(fontSize: 16)),
                              Text(
                                  '${langManager.tr("definite_plural")}: ${word.toPlural}',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.blue)),
                              Text(
                                  '${langManager.tr("indefinite_plural")}: ${word.toPluralIndefinite}',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.green)),
                            ]))),
            ])),
      ),
    );
  }
}
