import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/api_append.dart';
import 'package:movie_app/core/utils/app_units.dart';
import 'package:movie_app/model/movie_result_model/movie_result_model.dart';

class ImageListSliderWidget extends StatelessWidget {
  const ImageListSliderWidget({
    super.key,
    required this.results,
  });
  final List<MovieResultModel> results;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: results.length,
      itemBuilder: (context, index, realIndex) => ClipRRect(
        borderRadius: BorderRadius.circular(
          context.width(0.04),
        ),
        child: Image.network(
          "${ApiAppend.imageUrl}${results[index]}",
          fit: BoxFit.cover,
        ),
      ),
      options: CarouselOptions(
        viewportFraction: 0.8 / 1.3,
        aspectRatio: 16 / 14,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
