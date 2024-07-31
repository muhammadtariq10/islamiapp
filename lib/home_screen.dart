import 'package:flutter/material.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/hadeth/hadethtab.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/quran/quran.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/radio/radio.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/sebha/sebha.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/setting/setting_provider.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/setting/setting_tap.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 2;
  List<Widget> tabs = [
    RadioTap(),
    SebhaTap(),
    QuranTap(),
    HadethTap(),
    SettingTap(),
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                settingProvider.themeMode == ThemeMode.light
                    ? "assets/images/default_bg.png"
                    : "assets/images/dark_bg.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(AppLocalizations.of(context)!.islami),
          centerTitle: true,
        ),
        backgroundColor: Colors.transparent,
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label: "Sebha",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: "Quran",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label: "Hadeth",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: "Settings",
              ),
            ]),
      ),
    );
  }
}
