import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c8_online/providers/settings_provider.dart';
import 'package:islami_c8_online/ui/hadeth_details/hadeth_details.dart';
import 'package:islami_c8_online/ui/home/home_screen.dart';
import 'package:islami_c8_online/ui/my_theme_data.dart';
import 'package:islami_c8_online/ui/splash/splash_screen.dart';
import 'package:islami_c8_online/ui/sura_details/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // get settings provider
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (buildContext) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(
          'en',
        ), // English
        Locale(
          'ar',
        ), // arabic
      ],
      locale: Locale(provider.languageCode),
    );
  }
}
