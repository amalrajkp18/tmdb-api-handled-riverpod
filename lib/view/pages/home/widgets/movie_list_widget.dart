import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/constants/api_appends.dart';
import 'package:movie_app/core/utils/app_units.dart';
import 'package:movie_app/core/utils/white_space_box.dart';
import 'package:movie_app/model/result_model/result_model.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({
    super.key,
    required this.title,
    required this.result,
  });
  final String title;

  final List<ResultModel> result;

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
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "${ApiAppends.imageUrl}${result[index].posterPath}"),
                    ),
                  ),
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
