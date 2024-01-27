import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_units.dart';

class WhiteSpaceBox {
  static Widget spacerBox({
    required BuildContext context,
    double width = 0,
    double height = 0,
  }) {
    return SizedBox(
      width: context.width(width),
      height: context.height(height),
    );
  }
}
