import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/app_units.dart';

class AuthHomePage extends ConsumerWidget {
  const AuthHomePage({super.key});
  static const String routeName = '/authHomePage';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          // bg image
          Image.asset(
            "assets/images/img_auth_home_bg.jpg",
            fit: BoxFit.cover,
            height: context.height(1),
          ),
          // spread color
          Container(
            width: context.width(1),
            height: context.height(1),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
            ),
            // content
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "iNox",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: context.width(0.12),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
