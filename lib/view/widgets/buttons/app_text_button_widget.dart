import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/app_units.dart';

import '../../../core/colors/app_colors.dart';

class AppTextButtonWidget extends StatelessWidget {
  const AppTextButtonWidget({
    super.key,
    required this.onpressed,
    required this.backgroundColor,
    required this.text,
  });
  final void Function() onpressed;
  final Color backgroundColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          context.width(1),
          context.height(0.07),
        ),
        backgroundColor: backgroundColor,
      ),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: AppColors.contentText,
          fontWeight: FontWeight.w600,
          fontSize: context.width(0.04),
        ),
      ),
    );
  }
}
