import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/app_units.dart';
import 'package:movie_app/core/utils/white_space_box.dart';
import 'package:shimmer/shimmer.dart';

class MovieListShimmer extends StatelessWidget {
  const MovieListShimmer({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.width(0.025),
        bottom: context.height(0.02),
      ),
      child: SizedBox(
        width: context.width(1),
        height: context.height(0.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: context.width(0.05),
              ),
            ),
            // image list
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.2),
                highlightColor: Colors.grey.withOpacity(0.4),
                child: ListView.separated(
                  padding: EdgeInsets.only(
                    top: context.height(0.015),
                    right: context.width(0.02),
                  ),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: context.width(0.35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        context.width(0.02),
                      ),
                      color: Colors.grey.withOpacity(0.9),
                    ),
                  ),
                  separatorBuilder: (context, index) => WhiteSpaceBox.spacerBox(
                    context: context,
                    width: 0.02,
                  ),
                  itemCount: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
