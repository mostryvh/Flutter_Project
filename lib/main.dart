import 'package:flutter/material.dart';
import 'core/helpers/app_routes.dart';
 
void main() {
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
 