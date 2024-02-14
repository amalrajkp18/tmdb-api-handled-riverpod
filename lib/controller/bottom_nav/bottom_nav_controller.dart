import 'package:flutter/material.dart';
import 'package:movie_app/view/pages/home/home_page.dart';
import 'package:movie_app/view/pages/search/search_page.dart';
import 'package:movie_app/view/pages/shorts/shorts_page.dart';
import 'package:movie_app/view/pages/user/user_page.dart';

class BottomNavController {
  static ValueNotifier<int> valueNotifier = ValueNotifier(0);
  static List<Widget> pages = const [
    HomePage(),
    ShortsPage(),
    SearchPage(),
    UserPage(),
  ];
}
