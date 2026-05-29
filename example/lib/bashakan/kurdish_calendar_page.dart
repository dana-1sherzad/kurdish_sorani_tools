import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishCalendarPage extends StatefulWidget {
  const KurdishCalendarPage({super.key});
  @override
  State<KurdishCalendarPage> createState() => _KurdishCalendarPageState();
}

class _KurdishCalendarPageState extends State<KurdishCalendarPage> {
  DateTime _selectedDate = DateTime.now();

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Gregorian to Hijri
HijriDate hijri = DateTime.now().toHijri;
String hijriStr = DateTime.now().toHijriFormat(pattern: 'dd MMMM yyyy');

// Gregorian to Kurdish (Rojhalati)
KurdishDate kd = DateTime.now().toKurdishCalendar;
String kdStr = DateTime.now().toKurdishCalendarFormat(pattern: 'dd MMMM yyyy');

// Multi-language date picker
final picked = await showKurdishDatePickerModal(
  context: context,
  lang: 'ckb', // or 'en' or 'ar'
);
''';

  // English names
  static const _enMonths = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  static const _enDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  static const _enHijri = [
    'Muharram',
    'Safar',
    'Rabi al-Awwal',
    'Rabi al-Thani',
    'Jumada al-Ula',
    'Jumada al-Thani',
    'Rajab',
    'Shaban',
    'Ramadan',
    'Shawwal',
    'Dhul Qadah',
    'Dhul Hijjah'
  ];
  static const _enKurdMonths = [
    'Xakelêwe',
    'Gulan',
    'Cozardan',
    'Pushper',
    'Gelawêj',
    'Xermanan',
    'Rezber',
    'Gelarêzan',
    'Sermawez',
    'Befranbar',
    'Rêbendan',
    'Resheme'
  ];

  // Arabic names
  static const _arMonths = [
    'يناير',
    'فبراير',
    'مارس',
    'أبريل',
    'مايو',
    'يونيو',
    'يوليو',
    'أغسطس',
    'سبتمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر'
  ];
  static const _arDays = [
    'الإثنين',
    'الثلاثاء',
    'الأربعاء',
    'الخميس',
    'الجمعة',
    'السبت',
    'الأحد'
  ];

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

  String _gregDate(DateTime d) => _t(
        d.toKurdishDate(pattern: 'dd MMMM yyyy'),
        '${d.day} ${_enMonths[d.month - 1]} ${d.year}',
        '${d.day} ${_arMonths[d.month - 1]} ${d.year}',
      );

  String _headerDate(DateTime d) => _t(
        d.toKurdishDate(pattern: 'EEEE, dd MMMM yyyy'),
        '${_enDays[d.weekday - 1]}, ${d.day} ${_enMonths[d.month - 1]} ${d.year}',
        '${_arDays[d.weekday - 1]}، ${d.day} ${_arMonths[d.month - 1]} ${d.year}',
      );

  String _hijriDate(DateTime d) {
    final h = d.toHijri;
    return _t(
      d.toHijriFormat(pattern: 'dd MMMM yyyy'),
      '${h.day} ${_enHijri[h.month - 1]} ${h.year}',
      '${h.day} ${KurdishCalendar.hijriMonthNamesArabic[h.month - 1]} ${h.year}',
    );
  }

  String _kurdCalDate(DateTime d) {
    final k = d.toKurdishCalendar;
    return _t(
      d.toKurdishCalendarFormat(pattern: 'dd MMMM yyyy'),
      '${k.day} ${_enKurdMonths[k.month - 1]} ${k.year}',
      '${k.day} ${KurdishCalendar.kurdishMonthNames[k.month - 1]} ${k.year}',
    );
  }

  List<String> get _hijriMonthList {
    switch (langManager.currentLanguage) {
      case 'en':
        return _enHijri;
      case 'ar':
        return KurdishCalendar.hijriMonthNamesArabic;
      default:
        return KurdishCalendar.hijriMonthNames;
    }
  }

  List<String> get _kurdMonthList {
    switch (langManager.currentLanguage) {
      case 'en':
        return _enKurdMonths;
      default:
        return KurdishCalendar.kurdishMonthNames;
    }
  }

  @override
  Widget build(BuildContext context) {
    final hijri = _selectedDate.toHijri;
    final kurdish = _selectedDate.toKurdishCalendar;

    return Scaffold(
      appBar: AppBar(
        title: Text(_t('ڕۆژژمێر', 'Calendar', 'التقويم')),
        actions: [infoButton(context, title: 'KurdishCalendar', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(children: [
            Card(
                child: ListTile(
              leading: const Icon(Icons.calendar_today, color: Colors.blue),
              title: Text(_headerDate(_selectedDate)),
              subtitle: Text(
                  '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}'),
              trailing: const Icon(Icons.edit_calendar),
              onTap: () async {
                final picked = await showKurdishDatePickerModal(
                    context: context,
                    initialDate: _selectedDate,
                    lang: langManager.currentLanguage);
                if (picked != null) setState(() => _selectedDate = picked);
              },
            )),
            const SizedBox(height: 16),
            _card(
                '📅 ${_t("گریگۆری", "Gregorian", "الميلادي")}',
                '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                _gregDate(_selectedDate),
                Colors.blue),
            _card(
                '🕌 ${_t("هیجری", "Hijri", "الهجري")}',
                '${hijri.day}/${hijri.month}/${hijri.year}',
                _hijriDate(_selectedDate),
                Colors.green),
            _card(
                '☀️ ${_t("کوردی (ڕۆژهەڵاتی)", "Kurdish (Rojhalati)", "الكردي (الروژهلاتي)")}',
                '${kurdish.day}/${kurdish.month}/${kurdish.year}',
                _kurdCalDate(_selectedDate),
                Colors.orange),
            const SizedBox(height: 16),
            const Divider(),
            _months(_t('مانگەکانی هیجری', 'Hijri Months', 'الأشهر الهجرية'),
                _hijriMonthList),
            const SizedBox(height: 12),
            _months(_t('مانگەکانی کوردی', 'Kurdish Months', 'الأشهر الكردية'),
                _kurdMonthList),
          ]),
        ),
      ),
    );
  }

  Widget _card(String title, String num, String fmt, Color c) => Card(
        margin: const EdgeInsets.only(bottom: 12),
        child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: c, fontSize: 15)),
              const SizedBox(height: 8),
              Text(fmt, style: const TextStyle(fontSize: 18)),
              Text(num,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 13)),
            ])),
      );

  Widget _months(String title, List<String> list) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        const SizedBox(height: 8),
        Wrap(spacing: 8, runSpacing: 8, children: [
          for (int i = 0; i < list.length; i++)
            Chip(
                label: Text('${i + 1}. ${list[i]}',
                    style: const TextStyle(fontSize: 12))),
        ]),
      ]);
}
