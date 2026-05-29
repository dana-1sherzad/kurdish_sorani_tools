import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import 'pages/home_page.dart';
import 'pages/features_page.dart';
import 'pages/demo_page.dart';
import 'pages/docs_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  kurdishLocalizationLanguageGetter = () => 'ckb';
  runApp(const KurdishToolsStudio());
}

class KurdishToolsStudio extends StatelessWidget {
  const KurdishToolsStudio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurdish Sorani Tools',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF2563EB),
        useMaterial3: true,
        fontFamily: 'Segoe UI',
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: const Color(0xFF2563EB),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light,
      localizationsDelegates: kurdishLocalizationsDelegates,
      supportedLocales: const [Locale('ku', 'IQ'), Locale('en', 'US')],
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/features': (_) => const FeaturesPage(),
        '/demo': (_) => const DemoPage(),
        '/docs': (_) => const DocsPage(),
      },
    );
  }
}
