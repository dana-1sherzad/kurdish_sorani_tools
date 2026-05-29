import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: const StudioNavBar(currentIndex: 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: isWide ? 80 : 48,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF1E40AF), Color(0xFF3B82F6)],
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Kurdish Sorani Tools',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isWide ? 48 : 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'The most comprehensive Flutter package for Kurdish Sorani language\n25+ tools for numbers, dates, localization, and more',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: isWide ? 18 : 14,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: [
                      FilledButton.icon(
                        onPressed: () => Navigator.pushNamed(context, '/demo'),
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('Try Demo'),
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF1E40AF),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () => Navigator.pushNamed(context, '/docs'),
                        icon: const Icon(Icons.book, color: Colors.white),
                        label: const Text(
                          'Documentation',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white54),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  // Code preview
                  Container(
                    constraints: const BoxConstraints(maxWidth: 500),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const SelectableText(
                      'import \'package:kurdish_sorani_tools/kurdish_sorani_tools.dart\';\n\n'
                      'String words = 250.toKurdishString();\n'
                      '// "دوو سەد و پەنجا"\n\n'
                      'String today = KurdishDateTime.today();\n'
                      '// "هەینی, 29 ئایار 2026"',
                      style: TextStyle(
                        fontFamily: 'monospace',
                        color: Colors.greenAccent,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Stats Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
              child: Wrap(
                spacing: 32,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: [
                  _stat('25+', 'Features'),
                  _stat('41', 'Unit Tests'),
                  _stat('3', 'Languages'),
                  _stat('420KB', 'Package Size'),
                ],
              ),
            ),

            // Quick Features
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(48),
              color: Colors.grey.shade50,
              child: Column(
                children: [
                  const Text(
                    'What it does',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 32),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    children: [
                      _featureChip(Icons.numbers, 'Number to Words'),
                      _featureChip(Icons.calendar_month, 'Kurdish Calendar'),
                      _featureChip(Icons.translate, 'Multi-Language'),
                      _featureChip(Icons.phone_android, 'Phone Formatter'),
                      _featureChip(Icons.attach_money, 'Currency'),
                      _featureChip(Icons.access_time, 'Relative Time'),
                      _featureChip(Icons.keyboard, 'Keyboard Converter'),
                      _featureChip(Icons.text_fields, 'Text Normalizer'),
                      _featureChip(Icons.date_range, 'Hijri Calendar'),
                      _featureChip(Icons.check_circle, 'Form Validators'),
                    ],
                  ),
                  const SizedBox(height: 32),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/features'),
                    child: const Text('See all features →'),
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              color: Colors.grey.shade900,
              child: const Text(
                'Made by Dana Sherzad • MIT License • pub.dev/packages/kurdish_sorani_tools',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white54, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _stat(String value, String label) => Column(
    children: [
      Text(
        value,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Color(0xFF2563EB),
        ),
      ),
      Text(label, style: TextStyle(color: Colors.grey.shade600)),
    ],
  );

  Widget _featureChip(IconData icon, String label) => Chip(
    avatar: Icon(icon, size: 18),
    label: Text(label),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  );
}
