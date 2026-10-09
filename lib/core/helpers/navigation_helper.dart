import 'package:flutter/material.dart';

class NavigationHelper {
  //for push navogator
  static Future? goTo(BuildContext context, String routeName) {
     return Navigator.pushNamed(context, routeName);
   }

  //for push&   Killed the page
  static void goToAndReplace(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  //for push and clear all  السابقه  page لحل مشكله صفحه الsing up
  static void goToAndClearStack(BuildContext context, String routeName) {
    Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false);
  }

  // for pop navigator
  static void goBack(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
