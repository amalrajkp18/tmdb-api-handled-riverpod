import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/controller/theme/theme_controller.dart';
import 'package:movie_app/core/colors/app_colors.dart';

class AppTheme {
  static ThemeData appTheme(WidgetRef ref) => ThemeData(
        useMaterial3: true,
        brightness: ref.watch(themeControllerProvider)
            ? Brightness.light
            : Brightness.dark,
        scaffoldBackgroundColor: ref.watch(themeControllerProvider)
            ? Colors.white
            : AppColors.scaffoldBg,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      );
}
