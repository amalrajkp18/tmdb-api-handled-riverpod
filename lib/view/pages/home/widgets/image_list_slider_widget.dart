import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/controller/trending_all/trending_all.dart';
import 'package:movie_app/core/constants/api_append.dart';
import 'package:movie_app/core/utils/app_units.dart';
import 'package:shimmer/shimmer.dart';

class ImageListSliderWidget extends ConsumerWidget {
  const ImageListSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(trendingAllProvider).when(
          // movie list section
          data: (data) => CarouselSlider.builder(
            itemCount: data.results.length,
            itemBuilder: (context, index, realIndex) => ClipRRect(
              borderRadius: BorderRadius.circular(
                context.width(0.04),
              ),
              child: Image.network(
                "${ApiAppend.imageUrl}${data.results[index].posterPath}",
                fit: BoxFit.cover,
              ),
            ),
            options: CarouselOptions(
              viewportFraction: 0.8 / 1.3,
              aspectRatio: 16 / 14,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
          ),
          // error section
          error: (error, stackTrace) => Center(
            child: Text(
              "An error ocuured\n$error",
              textAlign: TextAlign.center,
            ),
          ),
          // loading section
          loading: () => Shimmer.fromColors(
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
        );
  }
}
