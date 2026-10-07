import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screans/profileScrean/profile_screan.dart';
import 'package:flutter_application_1/Screans/Start_App/splash.dart';
import 'package:flutter_application_1/Screans/main_screan.dart';
import 'package:flutter_application_1/Screans/Start_App/onboarding.dart';
import 'package:flutter_application_1/Screans/log _in_Screan/logInScrean.dart';
import 'package:flutter_application_1/Screans/log _in_Screan/SignUpScreen.dart';
import 'package:flutter_application_1/Screans/Start_App/sucsses_sin.dart';
import 'package:flutter_application_1/Screans/HomeScrean.dart';
import 'package:flutter_application_1/Screans/search_app.dart';
import 'package:flutter_application_1/Screans/profileScrean/Help_Center.dart';
import 'package:flutter_application_1/Screans/profileScrean/My_Acount.dart';
import 'package:flutter_application_1/Screans/profileScrean/Order_History.dart';
import 'package:flutter_application_1/Screans/profileScrean/Your_Favorites.dart';

class AppRoutes {
  static String splash = "splash";
  static String onboarding1 = "onboarding1";
  static String onboarding2 = "onboarding2";
  static String onboarding3 = "onboarding3";
  static String main = "main";
  static String home = "home";
  static String profile = "profile";
  static String login = "login";
  static String signUp = "SignUp";
  static String success = "SucssesSing";
  static String search = "search";
  static String myAcount = "MyAcount";
  static String favorites = "YourFavorites";
  static String orderHistory = "OrderHistory";
  static String helpeCenter = "HelpCenter";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (_) => SplashScreen(),
      onboarding1: (_) => OnboardingScreen(),
      onboarding2: (_) => OnboardingScreen2(),
      onboarding3: (_) => OnboardingScreen3(),
      main: (_) => MainScrean(),
      home: (_) => HomeScreen(),
      profile: (_) => ProfileScrean(),
      login: (_) => Loginscrean(),
      signUp: (_) => SignUpScreen(),
      success: (_) => SucssesSing(),
      search: (_) => SearchScreen(),
      myAcount: (_) => MyAcount(),
      favorites: (_) => YourFavorites(),
      orderHistory: (_) => OrderHistory(),
      helpeCenter: (_) => HelpCenter(),
    };
  }
}
