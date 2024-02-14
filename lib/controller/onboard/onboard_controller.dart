import 'package:movie_app/services/shared_preference/preference.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboard_controller.g.dart';

@riverpod
class OnboardController extends _$OnboardController {
  @override
  bool build() {
    return Preference.sharedPreferences.getBool('onboard') ?? false;
  }

  void onboardIsLoaded() {
    state = !state;
    // assign is user logged or not
    Preference.sharedPreferences.setBool('onboard', state);
  }
}
