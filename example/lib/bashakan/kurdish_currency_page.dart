import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishCurrencyPage extends StatelessWidget {
  const KurdishCurrencyPage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Iraqi Dinar
String result = 25000.toIQD();
// "25,000 د.ع"

// With Kurdish digits
String result2 = 25000.toIQD(kurdishDigits: true);
// "٢٥,٠٠٠ د.ع"

// With full name
String result3 = 25000.toIQD(showName: true);
// "25,000 دیناری عراقی"

// Other currencies
String usd = 1500.50.toCurrency(KurdishCurrencyType.usd, decimalPlaces: 2);
// "1,500.50 \$"

String eur = 2750.toCurrency(KurdishCurrencyType.eur);
// "2,750 €"

// Available: iqd, usd, eur, gbp, irr, trl
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('currency')),
        actions: [infoButton(context, title: 'KurdishCurrency', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              _card('IQD', 25000.toIQD()),
              _card('IQD (Kurdish)', 25000.toIQD(kurdishDigits: true)),
              _card('IQD (Name)', 25000.toIQD(showName: true)),
              _card('USD',
                  1500.5.toCurrency(KurdishCurrencyType.usd, decimalPlaces: 2)),
              _card('EUR', 2750.toCurrency(KurdishCurrencyType.eur)),
              _card(
                  'TRL (Kurdish)',
                  50000.toCurrency(KurdishCurrencyType.trl,
                      kurdishDigits: true)),
            ])),
      ),
    );
  }

  Widget _card(String title, String value) => Card(
        margin: const EdgeInsets.only(bottom: 12),
        child: ListTile(
            title: Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(value, style: const TextStyle(fontSize: 18))),
      );
}
