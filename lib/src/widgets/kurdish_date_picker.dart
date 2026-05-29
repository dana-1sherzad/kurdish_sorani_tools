/// Kurdish Date Picker Widgets
/// ویدجێتی هەڵبژاردنی بەروار - پشتگیری فرە زمانی

import 'package:flutter/material.dart';
import '../core/digits/digits.dart';

/// داتای زمان بۆ دەیت پیکەر
class _DatePickerLocale {
  final String selectDate;
  final String cancel;
  final String select;
  final String today;
  final String selectMonth;
  final List<String> months;
  final List<String> monthsShort;
  final List<String> weekDays;
  final List<String> dayNames;
  final TextDirection direction;
  final bool useKurdishDigits;
  final int firstDayOfWeek; // 0=Sun, 6=Sat

  const _DatePickerLocale({
    required this.selectDate,
    required this.cancel,
    required this.select,
    required this.today,
    required this.selectMonth,
    required this.months,
    required this.monthsShort,
    required this.weekDays,
    required this.dayNames,
    required this.direction,
    required this.useKurdishDigits,
    required this.firstDayOfWeek,
  });
}

const _ckbLocale = _DatePickerLocale(
  selectDate: 'بەروار هەڵبژێرە',
  cancel: 'پاشگەزبوونەوە',
  select: 'هەڵبژاردن',
  today: 'ئەمڕۆ',
  selectMonth: 'مانگ هەڵبژێرە',
  months: [
    'کانوونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'ئایار',
    'حوزەیران',
    'تەممووز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانوونی یەکەم'
  ],
  monthsShort: [
    'کانوونی٢',
    'شوبات',
    'ئازار',
    'نیسان',
    'ئایار',
    'حوزەیران',
    'تەممووز',
    'ئاب',
    'ئەیلوول',
    'تشرینی١',
    'تشرینی٢',
    'کانوونی١'
  ],
  weekDays: ['ش', 'ی', 'د', 'س', 'چ', 'پ', 'ه'],
  dayNames: [
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
    'یەکشەممە'
  ],
  direction: TextDirection.rtl,
  useKurdishDigits: true,
  firstDayOfWeek: 6,
);

const _enLocale = _DatePickerLocale(
  selectDate: 'Select Date',
  cancel: 'Cancel',
  select: 'Select',
  today: 'Today',
  selectMonth: 'Select Month',
  months: [
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
  ],
  monthsShort: [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ],
  weekDays: ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
  dayNames: [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ],
  direction: TextDirection.ltr,
  useKurdishDigits: false,
  firstDayOfWeek: 0,
);

const _arLocale = _DatePickerLocale(
  selectDate: 'اختر التاريخ',
  cancel: 'إلغاء',
  select: 'اختيار',
  today: 'اليوم',
  selectMonth: 'اختر الشهر',
  months: [
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
  ],
  monthsShort: [
    'ينا',
    'فبر',
    'مار',
    'أبر',
    'ماي',
    'يون',
    'يول',
    'أغس',
    'سبت',
    'أكت',
    'نوف',
    'ديس'
  ],
  weekDays: ['س', 'أ', 'إ', 'ث', 'أ', 'خ', 'ج'],
  dayNames: [
    'الإثنين',
    'الثلاثاء',
    'الأربعاء',
    'الخميس',
    'الجمعة',
    'السبت',
    'الأحد'
  ],
  direction: TextDirection.rtl,
  useKurdishDigits: false,
  firstDayOfWeek: 6,
);

_DatePickerLocale _getLocale(String lang) {
  switch (lang) {
    case 'en':
      return _enLocale;
    case 'ar':
      return _arLocale;
    default:
      return _ckbLocale;
  }
}

/// پیشاندانی دەیت پیکەری ماتریال بە کوردی
Future<DateTime?> showKurdishDatePicker({
  required BuildContext context,
  required DateTime initialDate,
  required DateTime firstDate,
  required DateTime lastDate,
}) =>
    showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate);

/// پیشاندانی تایم پیکەر بە کوردی
Future<TimeOfDay?> showKurdishTimePicker({
  required BuildContext context,
  required TimeOfDay initialTime,
}) =>
    showTimePicker(context: context, initialTime: initialTime);

/// ویدجێتی تایبەتی هەڵبژاردنی بەروار - فرە زمانی
/// [lang]: 'ckb', 'en', 'ar'
Future<DateTime?> showKurdishDatePickerModal({
  required BuildContext context,
  DateTime? initialDate,
  Color? accentColor,
  String lang = 'ckb',
}) async {
  return showGeneralDialog<DateTime>(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'dismiss',
    barrierColor: Colors.black54,
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (ctx, a1, a2, child) => SlideTransition(
      position: Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero)
          .animate(CurvedAnimation(parent: a1, curve: Curves.easeOutCubic)),
      child: FadeTransition(opacity: a1, child: child),
    ),
    pageBuilder: (ctx, _, __) => Center(
      child: _DatePickerDialog(
        initialDate: initialDate ?? DateTime.now(),
        accentColor: accentColor ?? Theme.of(context).primaryColor,
        locale: _getLocale(lang),
      ),
    ),
  );
}

class _DatePickerDialog extends StatefulWidget {
  final DateTime initialDate;
  final Color accentColor;
  final _DatePickerLocale locale;
  const _DatePickerDialog(
      {required this.initialDate,
      required this.accentColor,
      required this.locale});
  @override
  State<_DatePickerDialog> createState() => _DatePickerDialogState();
}

class _DatePickerDialogState extends State<_DatePickerDialog>
    with SingleTickerProviderStateMixin {
  late DateTime _selected;
  late DateTime _viewMonth;
  late AnimationController _anim;
  _DatePickerLocale get _l => widget.locale;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialDate;
    _viewMonth = DateTime(_selected.year, _selected.month, 1);
    _anim = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..forward();
  }

  @override
  void dispose() {
    _anim.dispose();
    super.dispose();
  }

  String _dayNum(int day) =>
      _l.useKurdishDigits ? convertEnToKu('$day') : '$day';

  String _formatDate(DateTime d) =>
      '${d.day} ${_l.months[d.month - 1]} ${d.year}';

  String _dayName(DateTime d) => _l.dayNames[d.weekday - 1];

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.95, end: 1.0)
          .animate(CurvedAnimation(parent: _anim, curve: Curves.easeOut)),
      child: Material(
        color: Colors.transparent,
        child: Directionality(
          textDirection: _l.direction,
          child: Container(
            width: 340,
            margin: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 30,
                    offset: const Offset(0, 10))
              ],
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _header(),
              _monthNav(),
              _weekHeaders(),
              _daysGrid(),
              _footer(),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _header() => Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [widget.accentColor, widget.accentColor.withOpacity(0.7)],
          ),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(_l.selectDate,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8), fontSize: 13)),
          const SizedBox(height: 8),
          Text(_dayName(_selected),
              style: const TextStyle(color: Colors.white70, fontSize: 15)),
          const SizedBox(height: 2),
          Text(_formatDate(_selected),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
        ]),
      );

  Widget _monthNav() => Padding(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 4),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _circleBtn(
              Icons.chevron_right,
              () => setState(() => _viewMonth =
                  DateTime(_viewMonth.year, _viewMonth.month - 1))),
          GestureDetector(
            onTap: _showMonthPicker,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20)),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: Text(
                    '${_l.months[_viewMonth.month - 1]} ${_viewMonth.year}',
                    key: ValueKey('${_viewMonth.month}-${_viewMonth.year}'),
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 15)),
              ),
            ),
          ),
          _circleBtn(
              Icons.chevron_left,
              () => setState(() => _viewMonth =
                  DateTime(_viewMonth.year, _viewMonth.month + 1))),
        ]),
      );

  Widget _circleBtn(IconData icon, VoidCallback onTap) => InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.grey.shade100),
          child: Icon(icon, size: 20, color: Colors.grey.shade700),
        ),
      );

  Widget _weekHeaders() => Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
        child: Row(
            children: _l.weekDays
                .map((d) => Expanded(
                      child: Center(
                          child: Text(d,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade500))),
                    ))
                .toList()),
      );

  Widget _daysGrid() {
    final daysInMonth = DateTime(_viewMonth.year, _viewMonth.month + 1, 0).day;
    final firstWeekday =
        DateTime(_viewMonth.year, _viewMonth.month, 1).weekday; // 1=Mon...7=Sun
    // Calculate offset based on firstDayOfWeek
    int startOffset;
    if (_l.firstDayOfWeek == 6) {
      // Saturday first
      startOffset = (firstWeekday + 1) % 7;
    } else if (_l.firstDayOfWeek == 0) {
      // Sunday first
      startOffset = firstWeekday % 7;
    } else {
      // Monday first
      startOffset = (firstWeekday - 1) % 7;
    }
    final today = DateTime.now();
    final rows = ((startOffset + daysInMonth) / 7).ceil();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
          children: List.generate(
              rows,
              (row) => Row(
                    children: List.generate(7, (col) {
                      final idx = row * 7 + col;
                      if (idx < startOffset ||
                          idx >= startOffset + daysInMonth) {
                        return const Expanded(child: SizedBox(height: 42));
                      }
                      final day = idx - startOffset + 1;
                      final date =
                          DateTime(_viewMonth.year, _viewMonth.month, day);
                      final isSelected = day == _selected.day &&
                          _viewMonth.month == _selected.month &&
                          _viewMonth.year == _selected.year;
                      final isToday = day == today.day &&
                          _viewMonth.month == today.month &&
                          _viewMonth.year == today.year;
                      final isFriday = date.weekday == 5;

                      return Expanded(
                          child: GestureDetector(
                        onTap: () => setState(() => _selected = date),
                        child: Container(
                          height: 42,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelected ? widget.accentColor : null,
                            border: isToday && !isSelected
                                ? Border.all(
                                    color: widget.accentColor, width: 2)
                                : null,
                          ),
                          alignment: Alignment.center,
                          child: Text(_dayNum(day),
                              style: TextStyle(
                                fontSize: 14,
                                color: isSelected
                                    ? Colors.white
                                    : isFriday
                                        ? Colors.red.shade400
                                        : isToday
                                            ? widget.accentColor
                                            : Colors.black87,
                                fontWeight: isSelected || isToday
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              )),
                        ),
                      ));
                    }),
                  ))),
    );
  }

  Widget _footer() => Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
        child: Row(children: [
          TextButton.icon(
            onPressed: () {
              final t = DateTime.now();
              setState(() {
                _selected = t;
                _viewMonth = DateTime(t.year, t.month);
              });
            },
            icon: Icon(Icons.today, size: 18, color: widget.accentColor),
            label: Text(_l.today, style: TextStyle(color: widget.accentColor)),
          ),
          const Spacer(),
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(_l.cancel,
                  style: TextStyle(color: Colors.grey.shade600))),
          const SizedBox(width: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.accentColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            onPressed: () => Navigator.pop(context, _selected),
            child: Text(_l.select,
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ]),
      );

  void _showMonthPicker() {
    showDialog(
        context: context,
        builder: (ctx) => Directionality(
              textDirection: _l.direction,
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() => _viewMonth = DateTime(
                                _viewMonth.year - 1, _viewMonth.month));
                            Navigator.pop(ctx);
                            _showMonthPicker();
                          }),
                      Text('${_viewMonth.year}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() => _viewMonth = DateTime(
                                _viewMonth.year + 1, _viewMonth.month));
                            Navigator.pop(ctx);
                            _showMonthPicker();
                          }),
                    ]),
                content: SizedBox(
                    width: 280,
                    height: 200,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                              childAspectRatio: 2.2),
                      itemCount: 12,
                      itemBuilder: (_, i) {
                        final isCurrent = i + 1 == _viewMonth.month;
                        return Material(
                          color: isCurrent
                              ? widget.accentColor
                              : Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {
                                setState(() => _viewMonth =
                                    DateTime(_viewMonth.year, i + 1));
                                Navigator.pop(ctx);
                              },
                              child: Center(
                                  child: Text(_l.monthsShort[i],
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: isCurrent
                                            ? Colors.white
                                            : Colors.black87,
                                        fontWeight: isCurrent
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                      )))),
                        );
                      },
                    )),
              ),
            ));
  }
}
