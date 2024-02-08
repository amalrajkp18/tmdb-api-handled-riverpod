import 'package:flutter/material.dart';
import 'package:movie_app/view/pages/main_page/main_page.dart';
import 'package:movie_app/view/pages/splash/splash_page.dart';

final Map<String, WidgetBuilder> pageRoutes = {
  SplashPage.routeName: (context) => const SplashPage(),
  MainPage.routeName: (context) => const MainPage(),
};
