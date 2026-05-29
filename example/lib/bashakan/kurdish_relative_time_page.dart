import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishRelativeTimePage extends StatelessWidget {
  const KurdishRelativeTimePage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Past
DateTime fiveMinAgo = DateTime.now().subtract(Duration(minutes: 5));
String result = fiveMinAgo.toKurdishRelative;
// "٥ خولەک لەمەوپێش"

// Yesterday
DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
String result2 = yesterday.toKurdishRelative;
// "دوێنێ"

// Future
DateTime tomorrow = DateTime.now().add(Duration(days: 1));
String result3 = tomorrow.toKurdishRelative;
// "سبەینێ"

// With custom reference time
String result4 = someDate.kurdishTimeAgo(now: referenceDate);
''';

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final examples = [
      now.subtract(const Duration(seconds: 30)),
      now.subtract(const Duration(minutes: 5)),
      now.subtract(const Duration(hours: 2)),
      now.subtract(const Duration(days: 1)),
      now.subtract(const Duration(days: 5)),
      now.subtract(const Duration(days: 14)),
      now.subtract(const Duration(days: 45)),
      now.add(const Duration(hours: 3)),
      now.add(const Duration(days: 1)),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('relative_time')),
        actions: [
          infoButton(context, title: 'KurdishRelativeTime', code: _code)
        ],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              for (final date in examples)
                Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text(date.toKurdishRelative),
                      subtitle: Text(
                          date.toKurdishDate(pattern: 'dd MMMM yyyy - HH:mm'),
                          style: const TextStyle(fontSize: 12)),
                    )),
            ])),
      ),
    );
  }
}
