import 'package:flutter/material.dart';

// Routes
import 'package:theme_provider/screens/home_screen.dart';
import 'package:theme_provider/screens/intro_screen.dart';
import 'package:theme_provider/screens/setting_screen.dart';
import 'package:theme_provider/screens/splash_screen.dart';

class Routes {
  Routes._(); //this is to prevent anyone from instantiate this object

  static const String splash = '/splash';
  static const String intro = '/intro';
  static const String home = '/home';
  static const String setting = '/setting';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashScreen(),
    intro: (BuildContext context) => const IntroScreen(),
    home: (BuildContext context) => const HomeScreen(),
    setting: (BuildContext context) => const SettingScreen(),
  };
}
