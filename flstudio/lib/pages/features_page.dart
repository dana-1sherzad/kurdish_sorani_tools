import 'package:flutter/material.dart';
import '../widgets/nav_bar.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StudioNavBar(currentIndex: 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'All Features',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  '25+ tools for Kurdish Sorani language development',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                ),
                const SizedBox(height: 32),
                _section('Numbers & Conversion', [
                  _f(
                    'Number to Words',
                    'Convert integers to Kurdish text',
                    'گۆڕینی ژمارە بۆ وشە',
                  ),
                  _f(
                    'Digit Conversion',
                    'English ↔ Kurdish numerals',
                    'گۆڕینی ژمارە',
                  ),
                  _f(
                    'Comma Formatting',
                    'Add/remove thousand separators',
                    'فۆرماتی فاریزە',
                  ),
                  _f(
                    'Words to Number',
                    'Kurdish words back to numbers',
                    'وشە بۆ ژمارە',
                  ),
                  _f('Number Range', '"1-5" → "یەک تا پێنج"', 'ڕیزی ژمارە'),
                  _f(
                    'Count Suffix',
                    'Auto-pluralize: 5 کتێبەکان',
                    'پاشگری ژمارە',
                  ),
                  _f('Ordinal', '1→یەکەم, 2→دووەم', 'پاشگری ڕێزبەندی'),
                ]),
                _section('Date, Time & Calendar', [
                  _f(
                    'Kurdish DateTime',
                    'Format dates with Kurdish names',
                    'بەروار و کات',
                  ),
                  _f(
                    'Relative Time',
                    '"5 minutes ago" in Kurdish',
                    'کاتی نسبی',
                  ),
                  _f(
                    'Hijri Calendar',
                    'Gregorian ↔ Hijri conversion',
                    'ڕۆژژمێری هیجری',
                  ),
                  _f(
                    'Kurdish Calendar',
                    'Rojhalati calendar support',
                    'ڕۆژژمێری کوردی',
                  ),
                  _f(
                    'Date Picker',
                    'Custom Kurdish date picker widget',
                    'هەڵبژاردنی بەروار',
                  ),
                  _f(
                    'Greeting',
                    'Time-based: بەیانی باش / ڕۆژ باش',
                    'سڵاوکردن',
                  ),
                ]),
                _section('Text & Input', [
                  _f(
                    'Kurdish Detection',
                    'Check if text is Kurdish',
                    'ناسینەوەی دەق',
                  ),
                  _f(
                    'Normalizer',
                    'Arabic → Kurdish char normalization',
                    'نۆرمالکردن',
                  ),
                  _f('Pluralization', 'کتێب → کتێبەکان', 'کۆکردنەوە'),
                  _f(
                    'String Utils',
                    'Slug, word count, truncate, reverse',
                    'ئامرازەکانی سترینگ',
                  ),
                  _f(
                    'Keyboard Converter',
                    'English layout → Kurdish chars',
                    'کیبۆرد',
                  ),
                  _f(
                    'Input Filters',
                    'Block English in TextFields',
                    'فلتەری ئینپووت',
                  ),
                  _f(
                    'Form Validators',
                    'Required, email, phone, numeric',
                    'پشکنینی فۆرم',
                  ),
                ]),
                _section('Localization & UI', [
                  _f(
                    'Multi-Language',
                    'Kurdish/English/Arabic + custom',
                    'فرە زمانی',
                  ),
                  _f(
                    'System Localization',
                    'Cut/Copy/Paste in Kurdish',
                    'لۆکاڵایزەیشن',
                  ),
                  _f(
                    'Text Direction',
                    'Auto RTL/LTR detection',
                    'ئاڕاستەی دەق',
                  ),
                  _f(
                    'Kurdish Fonts',
                    'Rabar font family built-in',
                    'فۆنتی کوردی',
                  ),
                  _f(
                    'Color Names',
                    'Kurdish names for colors',
                    'ناوی ڕەنگەکان',
                  ),
                  _f('Currency', 'IQD, USD, EUR formatting', 'فۆرماتی دراو'),
                  _f(
                    'Phone Number',
                    'Format + detect operator',
                    'ژمارەی مۆبایل',
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _section(String title, List<Widget> children) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 12),
      ...children,
      const SizedBox(height: 32),
    ],
  );

  Widget _f(String title, String desc, String kurdish) => Card(
    margin: const EdgeInsets.only(bottom: 8),
    child: ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(desc),
      trailing: Text(
        kurdish,
        style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
      ),
    ),
  );
}
