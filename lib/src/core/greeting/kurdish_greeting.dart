/// Kurdish Greeting by Time of Day
/// سڵاوکردن بەپێی کاتی ڕۆژ

class KurdishGreeting {
  KurdishGreeting._();

  /// گەڕاندنەوەی سڵاو بەپێی کاتی ئێستا
  static String now({DateTime? time}) {
    final hour = (time ?? DateTime.now()).hour;
    return fromHour(hour);
  }

  /// گەڕاندنەوەی سڵاو بەپێی کاتژمێر
  static String fromHour(int hour) {
    if (hour >= 5 && hour < 12) {
      return 'بەیانی باش';
    } else if (hour >= 12 && hour < 17) {
      return 'ڕۆژ باش';
    } else if (hour >= 17 && hour < 21) {
      return 'ئێوارە باش';
    } else {
      return 'شەو باش';
    }
  }

  /// سڵاو لەگەڵ ناو
  static String withName(String name, {DateTime? time}) {
    return '${now(time: time)}، $name';
  }

  /// هەموو سڵاوەکان
  static const List<String> allGreetings = [
    'بەیانی باش',
    'ڕۆژ باش',
    'ئێوارە باش',
    'شەو باش',
  ];
}
