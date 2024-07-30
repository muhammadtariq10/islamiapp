import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/quran/quran.dart';
import 'package:islamiapp/theme.dart';
import 'package:islamiapp/widget/loding_indecator.dart';

class SuraDatailsScreen extends StatefulWidget {
  static const String routeName = 'suraDatailsScreen';

  @override
  State<SuraDatailsScreen> createState() => _SuraDatailsScreenState();
}

class _SuraDatailsScreenState extends State<SuraDatailsScreen> {
  List<String> ayat = [];
  late SuraDatailsArgs args;
  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraDatailsArgs;
    if (ayat.isEmpty) {
      loadSuraFail();
    }

    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/default_bg.png"),
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
                color: AppTheme.white, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Text(
                  "سورة ${args.SurasName}",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(
                  color: AppTheme.primary, // لون الخط
                  height: 20, // المسافة العمودية حول الخط
                  thickness: 3, // سمك الخط
                  indent: 0, // المسافة البادئة من اليسار
                  endIndent: 0, // المسافة البادئة من اليمين
                ),
                Expanded(
                    child: ayat.isEmpty
                        ? LodingIndecator()
                        : ListView.builder(
                            itemBuilder: (_, index) => Text(
                              ayat[index],
                              style: Theme.of(context).textTheme.headlineSmall,
                              textAlign: TextAlign.center,
                            ),
                            itemCount: ayat.length,
                          ))
              ],
            ),
          ),
        ));
  }

  Future<void> loadSuraFail() async {
    await Future.delayed(Duration(seconds: 1));
    String sura =
        await rootBundle.loadString("assets/files/${args.index + 1}.txt");
    ayat = sura.split('\n\r');
    setState(() {});
  }
}
