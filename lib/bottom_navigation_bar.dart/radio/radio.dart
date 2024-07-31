import 'package:flutter/material.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/setting/setting_provider.dart';
import 'package:islamiapp/theme.dart';
import 'package:provider/provider.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Image.asset("assets/images/radio_image.png"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(settingProvider.themeMode == ThemeMode.light
                    ? "assets/images/Icon metro-next.png"
                    : "assets/images/Icon metro-next-dark.png"),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  settingProvider.themeMode == ThemeMode.light
                      ? "assets/images/Icon awesome-play.png"
                      : "assets/images/Icon awesome-play-dark.png",
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(settingProvider.themeMode == ThemeMode.light
                    ? "assets/images/Icon metro-nexttow.png"
                    : "assets/images/Icon metro-next-dark-tow.png"),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
        ],
      ),
    );
  }
}
