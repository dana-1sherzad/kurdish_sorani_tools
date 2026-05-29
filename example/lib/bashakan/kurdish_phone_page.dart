import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishPhonePage extends StatefulWidget {
  const KurdishPhonePage({super.key});
  @override
  State<KurdishPhonePage> createState() => _KurdishPhonePageState();
}

class _KurdishPhonePageState extends State<KurdishPhonePage> {
  final _controller = TextEditingController();
  String _formatted = '';
  String _operator = '';
  String _international = '';
  bool _isValid = false;

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Format phone number
String result = KurdishPhone.format("07501234567");
// "0750 123 4567"

// Detect operator (075=Korek, 077=Asiacell, 078=Zain, 079=Fastlink)
String? op = "07501234567".phoneOperator;
// "کۆڕەک"

// Validate
bool valid = "07501234567".isValidIraqiPhone;
// true

// International format
String intl = "07501234567".toInternationalPhone;
// "+9647501234567"

// Kurdish digits format
String ku = KurdishPhone.format("07501234567", useKurdishDigits: true);
// "٠٧٥٠ ١٢٣ ٤٥٦٧"
''';

  void _process(String value) {
    setState(() {
      _formatted = value.formatPhone;
      _operator = value.phoneOperator ?? langManager.tr('unknown');
      _international = value.toInternationalPhone;
      _isValid = value.isValidIraqiPhone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('phone_number')),
        actions: [infoButton(context, title: 'KurdishPhone', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                      controller: _controller,
                      keyboardType: TextInputType.phone,
                      textDirection: TextDirection.ltr,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: '07501234567',
                          labelText: langManager.tr('phone_number')),
                      onChanged: _process),
                  const SizedBox(height: 20),
                  if (_controller.text.isNotEmpty) ...[
                    _row(langManager.tr('format'), _formatted),
                    _row(langManager.tr('operator'), _operator),
                    _row(langManager.tr('international'), _international),
                    _row(
                        langManager.tr('valid'),
                        _isValid
                            ? '${langManager.tr("yes")} ✓'
                            : '${langManager.tr("no")} ✗'),
                  ],
                ])),
      ),
    );
  }

  Widget _row(String label, String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(children: [
          Text('$label ',
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Directionality(
              textDirection: TextDirection.ltr,
              child: Text(value, style: const TextStyle(fontSize: 16))),
        ]),
      );
}
