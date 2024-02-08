import 'package:movie_app/services/shared_preference/preference.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboard_controller.g.dart';

@riverpod
class OnboardController extends _$OnboardController {
  @override
  bool build() {
    return Preference.onboardPref.getBool('onboard') ?? false;
  }

  void onboardIsLoaded() {
    state = !state;
    Preference.onboardPref.setBool('onboard', state);
  }
}
