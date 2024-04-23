import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_units.dart';
import 'package:movie_app/core/utils/white_space_box.dart';
import 'package:shimmer/shimmer.dart';

import 'imagelist_shimmer_effect.dart';

class HomePageShimmer extends StatelessWidget {
  const HomePageShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // height space
          WhiteSpaceBox.spacerBox(context: context, height: 0.01),
          // movie imageslide shimmer
          Shimmer.fromColors(
            baseColor: Colors.grey.withOpacity(0.2),
            highlightColor: Colors.grey.withOpacity(0.4),
            child: CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) => Container(
                margin: EdgeInsets.symmetric(
                  horizontal: context.width(0.02),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(
                    context.width(0.04),
                  ),
                ),
              ),
              options: CarouselOptions(
                viewportFraction: 0.8 / 1.3,
                aspectRatio: 16 / 14,
                enlargeCenterPage: true,
              ),
            ),
          ),
          // image horizontal list shimmers
          WhiteSpaceBox.spacerBox(context: context, height: 0.01),
          const MovieListShimmer(title: 'Top Rated'),
          WhiteSpaceBox.spacerBox(context: context, height: 0.01),
          const MovieListShimmer(title: 'Now Playing'),
          WhiteSpaceBox.spacerBox(context: context, height: 0.01),
          const MovieListShimmer(title: 'Popular'),
          WhiteSpaceBox.spacerBox(context: context, height: 0.01),
          const MovieListShimmer(title: 'Upcoming'),
        ],
      ),
    );
  }
}
