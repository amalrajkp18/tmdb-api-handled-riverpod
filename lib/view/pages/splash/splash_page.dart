import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/controller/splash/splash_controller.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});
  static const String routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (ref.watch(splashControllerProvider)) {
      AsyncData(:final value) => value,
      _ => Center(
          child: Lottie.asset("assets/lottie/lottie_splash.json"),
        ),
    };
  }
}
