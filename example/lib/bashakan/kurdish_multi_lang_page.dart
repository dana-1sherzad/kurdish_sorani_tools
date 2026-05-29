import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishMultiLangPage extends StatefulWidget {
  const KurdishMultiLangPage({super.key});
  @override
  State<KurdishMultiLangPage> createState() => _KurdishMultiLangPageState();
}

class _KurdishMultiLangPageState extends State<KurdishMultiLangPage> {
  final _keys = [
    'cut',
    'copy',
    'paste',
    'share',
    'delete',
    'cancel',
    'ok',
    'save',
    'close',
    'search',
    'back',
    'next',
    'loading',
    'error',
    'success',
    'warning',
    'yes',
    'no',
    'settings',
    'home',
    'login',
    'logout',
    'today',
    'yesterday'
  ];

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

// 1. Create manager
final langManager = KurdishLangManager(defaultLanguage: 'ckb');

// 2. Load languages from JSON
final translations = await KurdishLangLoader.loadMultiple(defaultLangConfigs);
for (final t in translations) {
  langManager.addLanguage(t);
}

// 3. Wrap app with provider
KurdishLangProvider(
  manager: langManager,
  child: MaterialApp(home: MyApp()),
)

// 4. Use anywhere
langManager.tr('save');     // "پاشەکەوتکردن"
langManager.tr('cancel');   // "پاشگەزبوونەوە"

// 5. Switch language
langManager.setLanguage('en');
langManager.tr('save');     // "Save"

// 6. Auto text direction
langManager.textDirection;  // RTL or LTR

// 7. Add custom language
langManager.addLanguage(KurdishTranslation(
  languageCode: 'tr',
  languageName: 'Türkçe',
  textDirection: TextDirection.ltr,
  translations: {'save': 'Kaydet', 'cancel': 'İptal'},
));
''';

  @override
  void initState() {
    super.initState();
    langManager.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(langManager.tr('multi_lang')),
        actions: [
          infoButton(context, title: 'KurdishLangManager', code: _code)
        ],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.all(12),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                for (final lang in langManager.availableLanguages)
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ChoiceChip(
                        label: Text(langManager.languageNames[lang]!),
                        selected: langManager.currentLanguage == lang,
                        onSelected: (_) =>
                            setState(() => langManager.setLanguage(lang)),
                      )),
              ])),
          const Divider(),
          Expanded(
              child: ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: _keys.length,
            itemBuilder: (context, index) {
              final key = _keys[index];
              return Card(
                  margin: const EdgeInsets.only(bottom: 6),
                  child: ListTile(
                    leading: Text(key,
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                            fontFamily: 'monospace')),
                    title: Text(langManager.tr(key),
                        style: const TextStyle(fontSize: 18)),
                  ));
            },
          )),
        ]),
      ),
    );
  }
}
