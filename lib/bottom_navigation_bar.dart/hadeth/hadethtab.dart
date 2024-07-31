import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/quran/sura_datails_screen.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/hadeth/hadeth.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/hadeth/hadeth_datails.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/setting/setting_provider.dart';
import 'package:islamiapp/theme.dart';
import 'package:islamiapp/widget/loding_indecator.dart';
import 'package:provider/provider.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadeth = [];
  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadahadethfail();
    }
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);

    return Column(
      children: [
        Image.asset(
          "assets/images/hadeth_logo.png",
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        SizedBox(
          height: 12,
        ),
        Divider(
          color: settingProvider.themeMode == ThemeMode.light
              ? AppTheme.primarylight
              : AppTheme.gold, // لون الخط
          height: 20, // المسافة العمودية حول الخط
          thickness: 2, // سمك الخط
          indent: 0, // المسافة البادئة من اليسار
          endIndent: 0, // المسافة البادئة من اليمين
        ),
        Text(
          "إسم الحديث",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Divider(
          color: settingProvider.themeMode == ThemeMode.light
              ? AppTheme.primarylight
              : AppTheme.gold,
          height: 20,
          thickness: 2,
          indent: 0,
          endIndent: 0,
        ),
        Expanded(
            child: ahadeth.isEmpty
                ? LodingIndecator()
                : ListView.separated(
                    itemBuilder: (_, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          HadethDatails.routeName,
                          arguments: ahadeth[index],
                        );
                      },
                      child: Text(
                        ahadeth[index].title,
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    itemCount: ahadeth.length,
                    separatorBuilder: (_, index) => SizedBox(
                      height: 12,
                    ),
                  ))
      ],
    );
  }

  Future<void> loadahadethfail() async {
    String ahadethfailcontent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethtext = ahadethfailcontent.split('#');
    ahadeth = ahadethtext.map((ahadethtext) {
      List<String> ahadethlins = ahadethtext.trim().split('\n');
      String title = ahadethlins.first;
      ahadethlins.removeAt(0);
      List<String> content = ahadethlins;
      return Hadeth(title: title, content: content);
    }).toList();
    setState(() {});
  }
}
