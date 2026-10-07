import 'package:flutter/material.dart';
import 'core/helpers/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/core/helpers/shared_prefs_helper.dart';



 
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      title: "Bazar",
      debugShowCheckedModeBanner: false,
      routes:  AppRoutes.getRoutes(),
      initialRoute: AppRoutes.splash,
    );
  }
}
 