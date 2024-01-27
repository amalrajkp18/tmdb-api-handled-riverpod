import 'package:flutter/material.dart';
import 'package:movie_app/view/pages/onboarding/auth/auth_home.page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_controller.g.dart';

@Riverpod(keepAlive: true)
Future<Widget> splashController(SplashControllerRef ref) async {
  return Future.delayed(
    const Duration(seconds: 3),
    () => const AuthHomePage(),
  );
}
