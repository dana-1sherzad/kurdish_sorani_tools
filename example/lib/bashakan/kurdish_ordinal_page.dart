import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishOrdinalPage extends StatelessWidget {
  const KurdishOrdinalPage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Number to ordinal
String result = 1.toKurdishOrdinal;  // "یەکەم"
String result2 = 2.toKurdishOrdinal; // "دووەم"
String result3 = 3.toKurdishOrdinal; // "سێیەم"
String result4 = 5.toKurdishOrdinal; // "پێنجەم"
String result5 = 10.toKurdishOrdinal; // "دەیەم"
String result6 = 20.toKurdishOrdinal; // "بیستەم"

// Add ordinal suffix to any word
String result7 = "پێنج".withOrdinalSuffix; // "پێنجەم"
String result8 = "سێ".withOrdinalSuffix;   // "سێیەم"
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('ordinal')),
        actions: [infoButton(context, title: 'KurdishOrdinal', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              for (int i = 1; i <= 20; i++)
                Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      leading: CircleAvatar(child: Text('$i')),
                      title: Text(i.toKurdishOrdinal,
                          style: const TextStyle(fontSize: 18)),
                    )),
            ])),
      ),
    );
  }
}
