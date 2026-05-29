import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishDateTimePage extends StatelessWidget {
  const KurdishDateTimePage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Today's date in Kurdish
String today = KurdishDateTime.today();
// "هەینی, 29 ئایار 2026"

// Custom format
DateTime now = DateTime.now();
String formatted = now.toKurdishDate(pattern: 'EEEE, dd MMMM yyyy');

// Day and month names
String day = now.kurdishDayName;    // "هەینی"
String month = now.kurdishMonthName; // "ئایار"

// Short format
String short = now.toKurdishDate(pattern: 'dd/MM/yyyy');

// With time
String withTime = now.toKurdishDate(pattern: 'dd MMMM yyyy - HH:mm');
''';

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('date_time')),
        actions: [infoButton(context, title: 'KurdishDateTime', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(children: [
            _card(langManager.tr('today_date'), KurdishDateTime.today()),
            _card(langManager.tr('custom_format'),
                now.toKurdishDate(pattern: 'EEEE, dd MMMM yyyy')),
            _card(langManager.tr('day_name'), now.kurdishDayName),
            _card(langManager.tr('month_name'), now.kurdishMonthName),
            _card(langManager.tr('short_format'),
                now.toKurdishDate(pattern: 'dd/MM/yyyy')),
            _card(langManager.tr('with_time'),
                now.toKurdishDate(pattern: 'dd MMMM yyyy - HH:mm')),
          ]),
        ),
      ),
    );
  }

  Widget _card(String title, String value) => Card(
        margin: const EdgeInsets.only(bottom: 12),
        child: ListTile(
          title:
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(value, style: const TextStyle(fontSize: 16)),
        ),
      );
}
