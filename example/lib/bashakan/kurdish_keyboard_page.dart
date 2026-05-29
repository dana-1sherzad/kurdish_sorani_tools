import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishKeyboardPage extends StatefulWidget {
  const KurdishKeyboardPage({super.key});
  @override
  State<KurdishKeyboardPage> createState() => _KurdishKeyboardPageState();
}

class _KurdishKeyboardPageState extends State<KurdishKeyboardPage> {
  final _controller = TextEditingController();
  String _result = '';

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// English to Kurdish keyboard layout
String result = KurdishKeyboard.enToKu("sLaw");
// "سڵاو"

// Using extension
String result2 = "kwrdstan".toKurdishKeyboard;
// "کوردستان"

// Kurdish to English
String result3 = "سڵاو".toEnglishKeyboard;

// As TextInputFormatter for entire project:
class KurdishKeyboardFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.toKurdishKeyboard;
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

TextField(inputFormatters: [KurdishKeyboardFormatter()])
''';

  static const _lower = {
    'q': 'ق',
    'w': 'و',
    'e': 'ە',
    'r': 'ر',
    't': 'ت',
    'y': 'ی',
    'u': 'ئ',
    'i': 'ح',
    'o': 'ۆ',
    'p': 'پ',
    'a': 'ا',
    's': 'س',
    'd': 'د',
    'f': 'ف',
    'g': 'گ',
    'h': 'ه',
    'j': 'ژ',
    'k': 'ک',
    'l': 'ل',
    'z': 'ز',
    'x': 'خ',
    'c': 'ج',
    'v': 'ڤ',
    'b': 'ب',
    'n': 'ن',
    'm': 'م'
  };
  static const _upper = {
    'Q': 'ق',
    'W': 'وو',
    'E': 'ێ',
    'R': 'ڕ',
    'T': 'ط',
    'Y': 'ێ',
    'U': 'ء',
    'I': 'ع',
    'O': 'ؤ',
    'P': 'ث',
    'A': 'ئا',
    'S': 'ش',
    'D': 'ذ',
    'F': 'إ',
    'G': 'غ',
    'H': 'ھ',
    'J': 'چ',
    'K': 'ك',
    'L': 'ڵ',
    'Z': 'ض',
    'X': 'ص',
    'C': 'چ',
    'V': 'ظ',
    'B': 'ب',
    'N': 'ن',
    'M': 'م'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('keyboard')),
        actions: [infoButton(context, title: 'KurdishKeyboard', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              Text(langManager.tr('type_english')),
              const SizedBox(height: 8),
              TextField(
                  controller: _controller,
                  textDirection: TextDirection.ltr,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'sLaw = سڵاو'),
                  onChanged: (v) =>
                      setState(() => _result = v.toKurdishKeyboard)),
              const SizedBox(height: 20),
              Text(langManager.tr('result_kurdish')),
              const SizedBox(height: 8),
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(_result.isEmpty ? '...' : _result,
                      style: const TextStyle(fontSize: 20))),
              const SizedBox(height: 24),
              Text(langManager.tr('mapping_lower'),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 8),
              _grid(_lower),
              const SizedBox(height: 16),
              Text(langManager.tr('mapping_upper'),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 8),
              _grid(_upper),
            ])),
      ),
    );
  }

  Widget _grid(Map<String, String> m) => Wrap(
      spacing: 6,
      runSpacing: 6,
      children: m.entries
          .map((e) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(4)),
              child: Text('${e.key} → ${e.value}',
                  style: const TextStyle(fontSize: 14))))
          .toList());
}
