import 'package:flutter/material.dart';
import 'package:islami_c8_online/ui/home/home_screen.dart';
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
      theme: ThemeData(
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: Color(0xFFB7935F)),
          cardColor: Colors.white,
          primaryColor: Color(0xFFB7935F),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
              color: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(color: Color(0xFF242424), fontSize: 30),
              iconTheme: IconThemeData(color: Colors.black)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
          )),
    );
  }
}
