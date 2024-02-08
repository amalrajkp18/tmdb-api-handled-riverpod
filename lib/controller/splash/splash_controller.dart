import 'package:flutter/material.dart';
import 'package:movie_app/controller/onboard/onboard_controller.dart';
import 'package:movie_app/view/pages/main_page/main_page.dart';
import 'package:movie_app/view/pages/onboarding/auth/auth_home.page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_controller.g.dart';

@riverpod
Future<Widget> splashController(SplashControllerRef ref) async {
  return Future.delayed(
    const Duration(seconds: 3),
    () => ref.watch(onboardControllerProvider)
        ? const MainPage()
        : const AuthHomePage(),
  );
}
