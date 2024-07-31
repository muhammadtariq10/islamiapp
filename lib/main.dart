import 'package:flutter/material.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/quran/sura_datails_screen.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/hadeth/hadeth_datails.dart';
import 'package:islamiapp/screen/home_screen.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/setting/setting_provider.dart';
import 'package:islamiapp/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SettingProvider(),
      child: const islamiApp(),
    ),
  );
}

class islamiApp extends StatelessWidget {
  const islamiApp({super.key});
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDatailsScreen.routeName: (_) => SuraDatailsScreen(),
        HadethDatails.routeName: (_) => HadethDatails(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingProvider.language),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: settingProvider.themeMode,
    );
  }
}
