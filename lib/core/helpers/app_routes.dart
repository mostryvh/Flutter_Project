import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screans/profile_screan.dart';
import 'package:flutter_application_1/Screans/Start_App/splash.dart';
import 'package:flutter_application_1/Screans/main_screan.dart';
import 'package:flutter_application_1/Screans/Start_App/onboarding.dart';
import 'package:flutter_application_1/Screans/log _in_Screan/logInScrean.dart';
import 'package:flutter_application_1/Screans/log _in_Screan/SignUpScreen.dart';
import 'package:flutter_application_1/Screans/Start_App/sucsses_sin.dart';
import 'package:flutter_application_1/Screans/HomeScrean.dart';
import 'package:flutter_application_1/Screans/search_app.dart';

class AppRoutes {
  static const String splash = "splash";
  static const String onboarding1 = "onboarding1";
  static const String onboarding2 = "onboarding2";
  static const String onboarding3 = "onboarding3";
  static const String main = "main";
  static const String home = "home";
  static const String profile = "profile";
  static const String login = "login";
  static const String signUp = "SignUp";
  static const String success = "SucssesSing";
  static const String search = "search";


  static Map<String,WidgetBuilder>getRoutes(){
    return{
      splash: (_) => const SplashScreen(),
      onboarding1: (_) => const OnboardingScreen(),
      onboarding2: (_) => const OnboardingScreen2(),
      onboarding3: (_) => const OnboardingScreen3(),
      main: (_) => const MainScrean(),
      home: (_) => const HomeScreen(),
      profile: (_) => const profileScren(),
      login: (_) => const Loginscrean(),
      signUp: (_) => const SignUpScreen(),
      success: (_) => const SucssesSing(),
      search: (_) => const SearchScreen(),
    };
  }
}
