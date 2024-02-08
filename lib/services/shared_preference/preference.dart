import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  static late final SharedPreferences onboardPref;

  Preference._create(SharedPreferences preferences) {
    onboardPref = preferences;
  }

  //create Shared Prefernce
  static Future<Preference> create() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return Preference._create(preferences);
  }
}
