import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/colors/app_colors.dart';
import 'package:movie_app/core/constants/api_append.dart';
import 'package:movie_app/core/utils/app_units.dart';
import 'package:movie_app/core/utils/white_space_box.dart';
import 'package:movie_app/model/movie_info_model/movie_info_model.dart';
import 'package:stroke_text/stroke_text.dart';

class TrendingMovieListWidget extends StatelessWidget {
  const TrendingMovieListWidget({
    super.key,
    required this.title,
    required this.result,
  });
  final String title;

  final List<MovieInfoModel> result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.width(0.025),
        bottom: context.height(0.02),
      ),
      child: SizedBox(
        width: context.width(1),
        height: context.height(0.34),
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
              child: ListView.separated(
                padding: EdgeInsets.only(
                  top: context.height(0.015),
                  right: context.width(0.02),
                ),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                // number stacked
                itemBuilder: (context, index) => Stack(
                  children: [
                    SizedBox(
                      width: context.width(0.45),
                    ),
                    // image
                    Container(
                      width: context.width(0.4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          context.width(0.02),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "${ApiAppend.imageUrl}${result[index].posterPath}"),
                        ),
                      ),
                    ),
                    // text
                    Positioned(
                      bottom: -context.width(0.08),
                      right: 0,
                      child: StrokeText(
                        text: (index + 1).toString(),
                        strokeColor: AppColors.headText,
                        strokeWidth: 1.5,
                        textStyle: GoogleFonts.archivoBlack(
                          fontSize: context.width(0.25),
                          color: Colors.transparent,
                        ),
                      ),
                    )
                  ],
                ),
                separatorBuilder: (context, index) => WhiteSpaceBox.spacerBox(
                  context: context,
                  width: 0.04,
                ),
                itemCount: result.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
