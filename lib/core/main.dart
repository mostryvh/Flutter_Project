import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screans/profile_screan.dart';
import '../Screans/Start_App/splash.dart';
import '../Screans/main_screan.dart';
import '../Screans/Start_App/onboarding.dart';
import '../Screans/log _in_Screan/logInScrean.dart';
import '../Screans/log _in_Screan/SignUpScreen.dart';
import '../Screans/Start_App/SucssesSin.dart';
import '../Screans/HomeScrean.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      title: "fecbok",
      debugShowCheckedModeBanner: false,
      routes: {
        "splash":(_)=> SplashScreen(),
        "onboarding1":(_)=> OnboardingScreen(),
        "onboarding2":(_)=> OnboardingScreen2(),
        "onboarding3":(_)=> OnboardingScreen3(),
        "main": (_) => MainScrean(),
        "home": (_) => HomeScreen(),
        "profile": (_) => profileScren(),
        "login" : (_)=> Loginscrean(),
        "SignUp" :(_)=> SignUpScreen(),
        "SucssesSing":(_)=>SucssesSing(),
         
      },
      initialRoute: "main",
    );
  }
}
 