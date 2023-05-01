import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_c8_online/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(
          'assets/images/splash_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
