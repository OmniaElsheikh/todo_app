import 'dart:js';
import 'package:flutter/material.dart';
import 'package:to_do_appp/features/settings_provider.dart';
import 'package:to_do_appp/layout_view.dart';
import 'features/settings_provider.dart';
import 'package:provider/provider.dart';
import 'config/constants/Application_theme_manager.dart';
import 'features/splash/pages/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(
     ChangeNotifierProvider(
    create:(context)=>SettingsProvider(),
        child: const MyApp())
   );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     var vm =Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme:ApplicationThemeManager.lightTheme,
      darkTheme:ApplicationThemeManager.DarkTheme,
      locale: Locale("en"),
      localizationsDelegates:AppLocalizations.localizationsDelegates,
      supportedLocales:AppLocalizations.supportedLocales,
      initialRoute: SplashView.routName,
      routes: {
        SplashView.routName:(context) => const SplashView(),
        LayoutView.routName:(context)=> LayoutView(),
      },
    );
  }
}
