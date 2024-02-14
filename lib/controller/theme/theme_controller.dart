import 'package:movie_app/services/shared_preference/preference.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_controller.g.dart';

@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  @override
  bool build() {
    return Preference.sharedPreferences.getBool('themeState') ?? false;
  }

  void themeSwitcher() {
    state = !state;
    // save last theme to sharedPreference
    Preference.sharedPreferences.setBool('themeState', state);
  }
}
