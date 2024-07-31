import 'package:flutter/material.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/hadeth/hadeth.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/setting/setting_provider.dart';
import 'package:islamiapp/theme.dart';
import 'package:provider/provider.dart';

class HadethDatails extends StatelessWidget {
  static const String routeName = 'HadethDatails';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingProvider.themeMode == ThemeMode.light
                    ? "assets/images/default_bg.png"
                    : "assets/images/dark_bg.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("إسلامي"),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
                vertical: MediaQuery.of(context).size.height * 0.06),
            decoration: BoxDecoration(
              color: settingProvider.themeMode == ThemeMode.light
                  ? AppTheme.white
                  : AppTheme.primarydark,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Text(
                  "${hadeth.title}",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Divider(
                  color: settingProvider.themeMode == ThemeMode.light
                      ? AppTheme.primarylight
                      : AppTheme.gold, // لون الخط
                  height: 20, // المسافة العمودية حول الخط
                  thickness: 3, // سمك الخط
                  indent: 0, // المسافة البادئة من اليسار
                  endIndent: 0, // المسافة البادئة من اليمين
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (_, index) => Text(
                    hadeth.content[index],
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  itemCount: hadeth.content.length,
                ))
              ],
            ),
          ),
        ));
  }
}
