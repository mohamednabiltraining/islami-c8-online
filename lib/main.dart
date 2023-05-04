import 'package:flutter/material.dart';
import 'package:islami_c8_online/ui/home/home_screen.dart';
import 'package:islami_c8_online/ui/my_theme_data.dart';
import 'package:islami_c8_online/ui/splash/splash_screen.dart';
import 'package:islami_c8_online/ui/sura_details/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen()
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: MyThemeData.themeMode,
    );
  }
}
