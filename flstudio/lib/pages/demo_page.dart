import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../widgets/nav_bar.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});
  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  final _numberController = TextEditingController(text: '1250');
  final _textController = TextEditingController(text: 'sLaw');
  final _phoneController = TextEditingController(text: '07501234567');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StudioNavBar(currentIndex: 2),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Live Demo',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Try the features in real-time',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 32),

                // Number to Words
                _demoCard(
                  'Number to Kurdish Words',
                  TextField(
                    controller: _numberController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter a number',
                    ),
                    onChanged: (_) => setState(() {}),
                  ),
                  _result('Result', () {
                    final n = int.tryParse(_numberController.text);
                    return n != null ? n.toKurdishString() : 'Invalid number';
                  }()),
                ),

                // Keyboard Converter
                _demoCard(
                  'Keyboard Layout Converter',
                  TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Type English (e.g. sLaw)',
                    ),
                    onChanged: (_) => setState(() {}),
                  ),
                  _result('Kurdish', _textController.text.toKurdishKeyboard),
                ),

                // Phone
                _demoCard(
                  'Phone Number',
                  TextField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Iraqi phone number',
                    ),
                    onChanged: (_) => setState(() {}),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _result('Formatted', _phoneController.text.formatPhone),
                      _result(
                        'Operator',
                        _phoneController.text.phoneOperator ?? 'Unknown',
                      ),
                      _result(
                        'Valid',
                        _phoneController.text.isValidIraqiPhone
                            ? 'Yes ✓'
                            : 'No ✗',
                      ),
                    ],
                  ),
                ),

                // Date/Time
                _demoCard(
                  'Kurdish Date & Time',
                  const SizedBox.shrink(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _result('Today', KurdishDateTime.today()),
                      _result('Greeting', KurdishGreeting.now()),
                      _result(
                        'Hijri',
                        DateTime.now().toHijriFormat(pattern: 'dd MMMM yyyy'),
                      ),
                      _result(
                        'Kurdish Cal',
                        DateTime.now().toKurdishCalendarFormat(
                          pattern: 'dd MMMM yyyy',
                        ),
                      ),
                    ],
                  ),
                ),

                // Pluralization
                _demoCard(
                  'Pluralization & Ordinal',
                  const SizedBox.shrink(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _result('کتێب → plural', 'کتێب'.toPlural),
                      _result('منداڵ → plural', 'منداڵ'.toPluralIndefinite),
                      _result('1st', 1.toKurdishOrdinal),
                      _result('5th', 5.toKurdishOrdinal),
                      _result('5 books', 5.withWord('کتێب')),
                    ],
                  ),
                ),

                // Currency
                _demoCard(
                  'Currency Formatting',
                  const SizedBox.shrink(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _result('25000 IQD', 25000.toIQD()),
                      _result(
                        '25000 IQD (Kurdish)',
                        25000.toIQD(kurdishDigits: true),
                      ),
                      _result(
                        '1500 USD',
                        1500.toCurrency(KurdishCurrencyType.usd),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _demoCard(String title, Widget input, Widget output) => Card(
    margin: const EdgeInsets.only(bottom: 24),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          if (input is! SizedBox) input,
          if (input is! SizedBox) const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: output,
          ),
        ],
      ),
    ),
  );

  Widget _result(String label, String value) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        Text(
          '$label: ',
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
        Flexible(child: Text(value, style: const TextStyle(fontSize: 15))),
      ],
    ),
  );
}
