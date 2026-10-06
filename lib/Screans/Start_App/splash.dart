import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:flutter_application_1/core/helpers/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goNext();
  }

  void goNext() async{
    Future.delayed(Duration(seconds: 3), () {
      if (!mounted) return;

         NavigationHelper.goToAndReplace(context, AppRoutes.onboarding1);

      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF54408C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Vector (1).png',
                  width: 60,
                  height: 44,
                ),
                Text(
                  "Bazar.",
                  style: TextStyle(
                    fontFamily: 'Robot',
                    fontSize: 31.55,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                    letterSpacing: -1.26,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(-20, 40),
              child: Image.asset(
                'assets/images/Vector.png',
                width: 700,
                height: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
