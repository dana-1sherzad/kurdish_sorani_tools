import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishColorPage extends StatelessWidget {
  const KurdishColorPage({super.key});

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// Get Kurdish name of a color
String name = Colors.red.kurdishName;    // "سوور"
String name2 = Colors.blue.kurdishName;  // "شین"
String name3 = Colors.green.kurdishName; // "سەوز"

// Get closest color name (for any color)
String closest = Color(0xFFFF5500).closestKurdishName;
// "پرتەقاڵی"

// Get Color from Kurdish name
Color? color = KurdishColor.fromName("سوور");
// Color(0xFFFF0000)

// Get all available color names
List<String> names = KurdishColor.allNames;

// Available colors:
// سوور، سەوز، شین، زەرد، پرتەقاڵی، مۆر، سپی، ڕەش
// خۆڵەمێشی، قاوەیی، پەمبەیی، ئاسمانی، زیوی، ئاڵتوونی، نیلی، بەنەوشەیی
''';

  @override
  Widget build(BuildContext context) {
    final colors = KurdishColor.namedColors;
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('colors')),
        actions: [infoButton(context, title: 'KurdishColor', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              for (final entry in colors.entries)
                Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: entry.value,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey.shade300))),
                      title:
                          Text(entry.key, style: const TextStyle(fontSize: 18)),
                    )),
            ])),
      ),
    );
  }
}
