import 'package:flutter/material.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/setting/setting_provider.dart';
import 'package:islamiapp/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              AppLocalizations.of(context)!.darkmod,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Switch(
              value: settingProvider.themeMode == ThemeMode.dark,
              onChanged: (isDark) => settingProvider
                  .changeTheme(isDark ? ThemeMode.dark : ThemeMode.light),
              activeTrackColor: AppTheme.gold,
              inactiveTrackColor: AppTheme.primarylight,
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: settingProvider.language,
              items: [
                DropdownMenuItem(
                  value: "en",
                  child: Text(
                    AppLocalizations.of(context)!.en,
                    style: TextStyle(
                      color: settingProvider.themeMode == ThemeMode.light
                          ? AppTheme.primarylight
                          : AppTheme.gold,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: "ar",
                  child: Text(
                    AppLocalizations.of(context)!.ar,
                    style: TextStyle(
                      color: settingProvider.themeMode == ThemeMode.light
                          ? AppTheme.primarylight
                          : AppTheme.gold,
                    ),
                  ),
                ),
              ],
              onChanged: (selecdedvalue) {
                if (selecdedvalue == null) return;
                settingProvider.changeLanguage(selecdedvalue);
              },
            ),
          ],
        ),
      ],
    );
  }
}
