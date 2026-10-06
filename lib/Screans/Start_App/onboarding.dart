import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:flutter_application_1/core/helpers/app_routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(context, AppRoutes.signUp);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF54408C),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            Image.asset(
              'assets/images/FirstOnboarding.png',
              width: 320,
              height: 320,
            ),
            SizedBox(height: 10),
            Text(
              "Now reading books\nwill be easier",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.35,
                letterSpacing: -0.72,
                color: Color(0xFF121212),
              ),
            ),
            Text(
              " Discover new worlds, join a vibrant\n reading community. Start your reading\n adventure effortlessly with us.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.50,
                letterSpacing: 0,
                color: Color(0xFFA6A6A6),
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 8, color: Color(0xFF54408C)),
                SizedBox(width: 6),
                Icon(Icons.circle, size: 4, color: Color(0xFFE8E8E8)),
                SizedBox(width: 6),
                Icon(Icons.circle, size: 4, color: Color(0xFFE8E8E8)),
              ],
            ),

            SizedBox(height: 10),
            SizedBox(
              height: 56,
              width: 327,
              child: ElevatedButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(
                    context,
                    AppRoutes.onboarding2,
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF54408C),
                ),
                child: Text(
                  "Next",
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
            SizedBox(height: 10),
            SizedBox(
              height: 56,
              width: 327,
              child: ElevatedButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(context, AppRoutes.login);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFAF9FD),
                ),
                child: Text(
                  "sign in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                    letterSpacing: 0.3,
                    color: Color(0xFF54408C),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// page 2
class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(context, AppRoutes.signUp);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF54408C),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/SacendOnboarding.png',
              width: 320,
              height: 320,
            ),
            SizedBox(height: 10),
            Text(
              "Your Bookish Soulmate\n Awaits",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.35,
                letterSpacing: -0.72,
                color: Color(0xFF121212),
              ),
            ),
            Text(
              " Let us be your guide to the perfect\n read. Discover books tailored to your tastes\n for a truly rewarding experience.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.50,
                letterSpacing: 0,
                color: Color(0xFFA6A6A6),
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 4, color: Color(0xFFE8E8E8)),
                SizedBox(width: 6),
                Icon(Icons.circle, size: 8, color: Color(0xFF54408C)),
                SizedBox(width: 6),
                Icon(Icons.circle, size: 4, color: Color(0xFFE8E8E8)),
              ],
            ),

            SizedBox(height: 10),
            SizedBox(
              height: 56,
              width: 327,
              child: ElevatedButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(
                    context,
                    AppRoutes.onboarding3,
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF54408C),
                ),
                child: Text(
                  "Next",
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
            SizedBox(height: 10),
            SizedBox(
              height: 56,
              width: 327,
              child: ElevatedButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(context, AppRoutes.login);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFAF9FD),
                ),
                child: Text(
                  "sign in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                    letterSpacing: 0.3,
                    color: Color(0xFF54408C),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//page3

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(context, AppRoutes.signUp);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF54408C),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/TheertOnboardingpng.png',
              width: 320,
              height: 320,
            ),
            SizedBox(height: 10),
            Text(
              "Start Your Adventure",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.35,
                letterSpacing: -0.72,
                color: Color(0xFF121212),
              ),
            ),
            Text(
              " Ready to embark on a quest for\n inspiration and knowledge? Your\n adventure begins now. Let's go!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.50,
                letterSpacing: 0,
                color: Color(0xFFA6A6A6),
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 4, color: Color(0xFFE8E8E8)),
                SizedBox(width: 6),
                Icon(Icons.circle, size: 4, color: Color(0xFFE8E8E8)),
                SizedBox(width: 6),
                Icon(Icons.circle, size: 8, color: Color(0xFF54408C)),
              ],
            ),

            SizedBox(height: 10),
            SizedBox(
              height: 56,
              width: 327,
              child: ElevatedButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(context, AppRoutes.signUp);
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
            SizedBox(height: 10),
            SizedBox(
              height: 56,
              width: 327,
              child: ElevatedButton(
                onPressed: () {
                  NavigationHelper.goToAndReplace(context, AppRoutes.login);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFAF9FD),
                ),
                child: Text(
                  "sign in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                    letterSpacing: 0.3,
                    color: Color(0xFF54408C),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
