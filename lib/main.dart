import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_package/config/routes/routes.dart';
import 'package:test_package/config/themes/themes.dart';
import 'package:woo_theme_mode/woo_theme_mode.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WooThemeProvider()),
      ],
      child: const App(),
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test package woo',
      themeMode: context.watch<WooThemeProvider>().themeMode,
      // nom de votre variable dans le fichier themes.dart
      theme: themeClair,
      // nom de votre variable dans le fichier themes.dart
      darkTheme: themeDark,
      initialRoute: '/',
      routes: Routes().urls(),
    );
  }
}
