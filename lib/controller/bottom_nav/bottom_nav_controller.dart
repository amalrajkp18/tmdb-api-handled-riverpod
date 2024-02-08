import 'package:flutter/material.dart';
import 'package:movie_app/view/pages/onboarding/auth/auth_home.page.dart';

class BottomNavController {
  static ValueNotifier<int> valueNotifier = ValueNotifier(0);
  static List<Widget> pages = const [
    AuthHomePage(),
    AuthHomePage(),
    AuthHomePage(),
    AuthHomePage(),
  ];
}
