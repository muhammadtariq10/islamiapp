import 'package:flutter/material.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/setting/setting_provider.dart';
import 'package:islamiapp/theme.dart';
import 'package:provider/provider.dart';

class LodingIndecator extends StatelessWidget {
  const LodingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Center(
        child: CircularProgressIndicator(
      color: settingProvider.themeMode == ThemeMode.light
          ? AppTheme.primarylight
          : AppTheme.gold,
    ));
  }
}
