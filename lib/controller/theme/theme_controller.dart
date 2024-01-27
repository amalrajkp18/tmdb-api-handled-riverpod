import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_controller.g.dart';

@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  @override
  bool build() {
    return false;
  }

  void themeSwitcher() {
    state = !state;
  }
}
