import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static late SharedPreferences pref;
  static Future init() async {
    pref = await SharedPreferences.getInstance();
  }

  static void saveData({required String key, required String value}) {
    pref.setString(key, value);
  }

  static String? getData({required String key}) {
    return pref.getString(key);
  }
  static void removeData({required String key}) {
  pref.remove(key);
}
}
