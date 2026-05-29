import 'package:example/bashakan/goriny_zhmara_bo_nusiny_kurdy_sh3.dart';
import 'package:example/bashakan/fariza.dart';
import 'package:example/bashakan/goriny_zhmara.dart';
import 'package:example/bashakan/kurdish_calendar_page.dart';
import 'package:example/bashakan/kurdish_color_page.dart';
import 'package:example/bashakan/kurdish_currency_page.dart';
import 'package:example/bashakan/kurdish_date_time_page.dart';
import 'package:example/bashakan/kurdish_greeting_page.dart';
import 'package:example/bashakan/kurdish_input_filter_page.dart';
import 'package:example/bashakan/kurdish_keyboard_page.dart';
import 'package:example/bashakan/kurdish_multi_lang_page.dart';
import 'package:example/bashakan/kurdish_normalizer_page.dart';
import 'package:example/bashakan/kurdish_ordinal_page.dart';
import 'package:example/bashakan/kurdish_phone_page.dart';
import 'package:example/bashakan/kurdish_plural_page.dart';
import 'package:example/bashakan/kurdish_relative_time_page.dart';
import 'package:example/bashakan/kurdish_string_utils_page.dart';
import 'package:example/bashakan/kurdish_validators_page.dart';
import 'package:example/models/button_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

import 'bashakan/format_krdny_zhmara.dart';
import 'bashakan/goriny_zhmara_bo_nusiny_kurdy.dart';
import 'bashakan/kurdy_laxo_grtwa.dart';

final langManager = KurdishLangManager(defaultLanguage: 'ckb');

enum AppMode { material, cupertino }

AppMode appMode = AppMode.material;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final translations = await KurdishLangLoader.loadMultiple(defaultLangConfigs);
  for (final t in translations) {
    langManager.addLanguage(t);
  }
  // Connect langManager to system localizations (Cut/Copy/Paste etc.)
  kurdishLocalizationLanguageGetter = () => langManager.currentLanguage;
  langManager.addListener(() {
    kurdishLocalizationLanguageGetter = () => langManager.currentLanguage;
  });
  runApp(KurdishLangProvider(manager: langManager, child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    langManager.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('en', 'US'),
      supportedLocales: const [
        Locale('ku', 'IQ'),
        Locale('en', 'US'),
        Locale('ar')
      ],
      localizationsDelegates: kurdishLocalizationsDelegates,
      theme: ThemeData(
        fontFamily: KurdishSoraniTheme.font(KurdFont: KurdFont.rabar_22),
        package: KurdishSoraniTheme.package,
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}

// ═══════════════════════════════════════════════════════════════
// Onboarding: Language + Mode Selection
// ═══════════════════════════════════════════════════════════════

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String _selectedLang = 'ckb';
  AppMode _selectedMode = AppMode.material;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Icon(Icons.translate, size: 64, color: Colors.blue),
              const SizedBox(height: 12),
              const Text('Kurdish Sorani Tools',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text('v0.1.0', style: TextStyle(color: Colors.grey.shade500)),
              const SizedBox(height: 32),

              // Language
              const Text('زمان / Language / اللغة',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              _langTile('ckb', 'کوردی سۆرانی', '🇮🇶'),
              _langTile('en', 'English', '🇬🇧'),
              _langTile('ar', 'العربية', '🇸🇦'),
              const SizedBox(height: 24),

              // Mode
              const Text('App Mode / شێوازی ئەپ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              Row(children: [
                Expanded(
                    child:
                        _modeCard(AppMode.material, 'Material', Icons.android)),
                const SizedBox(width: 12),
                Expanded(
                    child:
                        _modeCard(AppMode.cupertino, 'Cupertino', Icons.apple)),
              ]),
              const SizedBox(height: 32),

              // Continue
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                  ),
                  onPressed: () {
                    langManager.setLanguage(_selectedLang);
                    appMode = _selectedMode;
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const Mallawa()));
                  },
                  child: const Text('→  Continue / بەردەوامبوون / متابعة',
                      style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _langTile(String code, String name, String flag) {
    final sel = _selectedLang == code;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
                color: sel ? Colors.blue : Colors.grey.shade300,
                width: sel ? 2 : 1)),
        tileColor: sel ? Colors.blue.shade50 : null,
        leading: Text(flag, style: const TextStyle(fontSize: 24)),
        title: Text(name,
            style: TextStyle(
                fontWeight: sel ? FontWeight.bold : FontWeight.normal)),
        trailing:
            sel ? const Icon(Icons.check_circle, color: Colors.blue) : null,
        onTap: () => setState(() => _selectedLang = code),
      ),
    );
  }

  Widget _modeCard(AppMode mode, String label, IconData icon) {
    final sel = _selectedMode == mode;
    return GestureDetector(
      onTap: () => setState(() => _selectedMode = mode),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: sel ? Colors.blue : Colors.grey.shade300,
              width: sel ? 2 : 1),
          color: sel ? Colors.blue.shade50 : null,
        ),
        child: Column(children: [
          Icon(icon, size: 36, color: sel ? Colors.blue : Colors.grey),
          const SizedBox(height: 8),
          Text(label,
              style: TextStyle(
                  fontWeight: sel ? FontWeight.bold : FontWeight.normal)),
        ]),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════
// Main Page
// ═══════════════════════════════════════════════════════════════

class Mallawa extends StatefulWidget {
  const Mallawa({super.key});
  @override
  State<Mallawa> createState() => _MallawaState();
}

class _MallawaState extends State<Mallawa> {
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
      body: Directionality(
        textDirection: langManager.textDirection,
        child: CustomScrollView(
          slivers: [
            // App Bar
            SliverAppBar(
              expandedHeight: 160,
              floating: false,
              pinned: true,
              actions: [
                IconButton(
                    icon: const Icon(Icons.language),
                    onPressed: () => _showLangPicker(context)),
                IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () => _showSettings(context)),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue.shade700, Colors.blue.shade400],
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(langManager.tr('app_name'),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none)),
                          const SizedBox(height: 4),
                          Text(KurdishGreeting.now(),
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 14,
                                  decoration: TextDecoration.none)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Features Grid
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.9,
                ),
                delegate: SliverChildListDelegate(_buildFeatureCards(context)),
              ),
            ),

            // Footer
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
                child: Text(
                  'Made by Dana Sherzad',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildFeatureCards(BuildContext context) {
    final features = [
      _Feature(Icons.numbers, langManager.tr('number_to_word'), Colors.indigo,
          const goriny_zhmara_bo_nusiny_kurdy()),
      _Feature(Icons.format_list_numbered, langManager.tr('format_number'),
          Colors.teal, const formatkrdny_zhmara(title: '')),
      _Feature(Icons.swap_horiz, langManager.tr('convert_digits'),
          Colors.orange, const Goriny_Zhmara()),
      _Feature(Icons.text_fields, langManager.tr('is_kurdish'), Colors.purple,
          const Kurdy_Laxo_Grtwa()),
      _Feature(Icons.calendar_month, langManager.tr('date_time'), Colors.blue,
          const KurdishDateTimePage()),
      _Feature(Icons.keyboard, langManager.tr('keyboard'), Colors.green,
          const KurdishKeyboardPage()),
      _Feature(Icons.auto_fix_high, langManager.tr('normalizer'),
          Colors.deepOrange, const KurdishNormalizerPage()),
      _Feature(Icons.attach_money, langManager.tr('currency'),
          Colors.amber.shade700, const KurdishCurrencyPage()),
      _Feature(Icons.access_time, langManager.tr('relative_time'), Colors.cyan,
          const KurdishRelativeTimePage()),
      _Feature(Icons.phone_android, langManager.tr('phone_number'), Colors.pink,
          const KurdishPhonePage()),
      _Feature(Icons.library_books, langManager.tr('plural'), Colors.brown,
          const KurdishPluralPage()),
      _Feature(Icons.text_snippet, langManager.tr('string_utils'),
          Colors.blueGrey, const KurdishStringUtilsPage()),
      _Feature(Icons.format_list_numbered_rtl, langManager.tr('ordinal'),
          Colors.deepPurple, const KurdishOrdinalPage()),
      _Feature(Icons.palette, langManager.tr('colors'), Colors.red,
          const KurdishColorPage()),
      _Feature(Icons.filter_alt, langManager.tr('input_filter'),
          Colors.lime.shade700, const KurdishInputFilterPage()),
      _Feature(Icons.translate, langManager.tr('multi_lang'),
          Colors.indigo.shade300, const KurdishMultiLangPage()),
      _Feature(Icons.date_range, _t('ڕۆژژمێر', 'Calendar', 'التقويم'),
          Colors.green.shade700, const KurdishCalendarPage()),
      _Feature(Icons.check_circle_outline, _t('پشکنین', 'Validators', 'التحقق'),
          Colors.red.shade300, const KurdishValidatorsPage()),
      _Feature(Icons.wb_sunny, _t('سڵاوکردن', 'Greeting', 'التحية'),
          Colors.orange.shade300, const KurdishGreetingPage()),
      _Feature(Icons.link, langManager.tr('url_fix'), Colors.grey, null),
    ];

    return features.map((f) => _buildCard(context, f)).toList();
  }

  Widget _buildCard(BuildContext context, _Feature f) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 2,
      shadowColor: f.color.withOpacity(0.3),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          if (f.page != null) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => f.page!));
          } else {
            _showUrlFix(context);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: f.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(f.icon, color: f.color, size: 28),
              ),
              const SizedBox(height: 10),
              Text(f.label,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none)),
            ],
          ),
        ),
      ),
    );
  }

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

  void _showUrlFix(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
            content: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text(langManager.tr('url_fix'),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  const Text("https://dana-sherzad.com/my profile page"),
                  const Icon(Icons.arrow_downward),
                  Text(chakkrdny_link(
                      'https://dana-sherzad.com/my profile page')),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () => Navigator.pop(ctx),
                      child: Text(langManager.tr('close'))),
                ]))));
  }

  void _showSettings(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (ctx) => Padding(
            padding: const EdgeInsets.all(24),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(langManager.tr('settings'),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              ListTile(
                  leading: const Icon(Icons.language),
                  title: Text(langManager.tr('language')),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pop(ctx);
                    _showLangPicker(context);
                  }),
              ListTile(
                  leading: const Icon(Icons.palette),
                  title: const Text('App Mode'),
                  subtitle: Text(
                      appMode == AppMode.material ? 'Material' : 'Cupertino'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pop(ctx);
                    _showModePicker(context);
                  }),
            ])));
  }

  void _showLangPicker(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
            title: Text(langManager.tr('select_language'),
                textAlign: TextAlign.center),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              _lTile(ctx, 'ckb', 'کوردی سۆرانی', '🇮🇶'),
              _lTile(ctx, 'en', 'English', '🇬🇧'),
              _lTile(ctx, 'ar', 'العربية', '🇸🇦'),
            ])));
  }

  Widget _lTile(BuildContext ctx, String code, String name, String flag) {
    final sel = langManager.currentLanguage == code;
    return ListTile(
        leading: Text(flag, style: const TextStyle(fontSize: 24)),
        title: Text(name),
        trailing:
            sel ? const Icon(Icons.check_circle, color: Colors.blue) : null,
        onTap: () {
          langManager.setLanguage(code);
          Navigator.pop(ctx);
        });
  }

  void _showModePicker(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
            title: const Text('App Mode', textAlign: TextAlign.center),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                  leading: const Icon(Icons.android),
                  title: const Text('Material'),
                  trailing: appMode == AppMode.material
                      ? const Icon(Icons.check_circle, color: Colors.blue)
                      : null,
                  onTap: () {
                    setState(() => appMode = AppMode.material);
                    Navigator.pop(ctx);
                  }),
              ListTile(
                  leading: const Icon(Icons.apple),
                  title: const Text('Cupertino'),
                  trailing: appMode == AppMode.cupertino
                      ? const Icon(Icons.check_circle, color: Colors.blue)
                      : null,
                  onTap: () {
                    setState(() => appMode = AppMode.cupertino);
                    Navigator.pop(ctx);
                  }),
            ])));
  }
}

class _Feature {
  final IconData icon;
  final String label;
  final Color color;
  final Widget? page;
  const _Feature(this.icon, this.label, this.color, this.page);
}
