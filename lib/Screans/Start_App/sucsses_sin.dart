import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:flutter_application_1/core/helpers/app_routes.dart';

class SucssesSing extends StatelessWidget {
  const SucssesSing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/Sucsses.png'),

          SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Congratulation!",
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 24,
                fontWeight: FontWeight(700),
                height: 1.35,
                letterSpacing: 0.3,
                color: Color(0xFF121212),
              ),
            ),
          ),
          SizedBox(height: 4),
          Align(
            alignment: Alignment.center,
            child: Text(
              "your account is complete, please enjoy the \n                 best menu from us.!",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight(400),
                height: 1.50,
                letterSpacing: 0,
                color: Color(0xFFA6A6A6),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 56,
            width: 327,
            child: ElevatedButton(
              onPressed: () {
                NavigationHelper.goToAndClearStack(context, AppRoutes.main);
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF54408C),
              ),
              child: Text(
                "Get Started",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.50,
                  letterSpacing: 0.3,
                  color: Color(0xFFFffFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
