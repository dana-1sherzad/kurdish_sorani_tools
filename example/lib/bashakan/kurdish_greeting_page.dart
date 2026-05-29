import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishGreetingPage extends StatelessWidget {
  const KurdishGreetingPage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Get greeting based on current time
String greeting = KurdishGreeting.now();
// "بەیانی باش" (5-12), "ڕۆژ باش" (12-17),
// "ئێوارە باش" (17-21), "شەو باش" (21-5)

// Greeting with name
String withName = KurdishGreeting.withName("دانا");
// "ڕۆژ باش، دانا"

// Greeting for specific hour
String morning = KurdishGreeting.fromHour(8);  // "بەیانی باش"
String evening = KurdishGreeting.fromHour(19); // "ئێوارە باش"
''';

  String _t(String ckb, String en, String ar) {
    switch (langManager.currentLanguage) {
      case 'en':
        return en;
      case 'ar':
        return ar;
      default:
        return ckb;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_t('سڵاوکردن', 'Greeting', 'التحية')),
        actions: [infoButton(context, title: 'KurdishGreeting', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(children: [
            Card(
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(children: [
                  const Icon(Icons.wb_sunny, size: 48, color: Colors.orange),
                  const SizedBox(height: 12),
                  Text(KurdishGreeting.now(),
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(KurdishGreeting.withName(_t('دانا', 'Dana', 'دانا')),
                      style: const TextStyle(fontSize: 18)),
                ]),
              ),
            ),
            const SizedBox(height: 16),
            Text(
                _t('سڵاو بەپێی کاتژمێر:', 'Greeting by hour:',
                    'التحية حسب الساعة:'),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            const SizedBox(height: 8),
            for (int hour in [6, 9, 13, 15, 18, 20, 23, 2])
              Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: ListTile(
                  leading: CircleAvatar(child: Text('$hour')),
                  title: Text(KurdishGreeting.fromHour(hour)),
                  subtitle: Text('$hour:00'),
                ),
              ),
          ]),
        ),
      ),
    );
  }
}
