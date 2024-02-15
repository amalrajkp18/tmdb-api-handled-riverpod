import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/controller/home_page/home_page_api.dart';
import 'package:movie_app/core/constants/app_text.dart';
import 'package:movie_app/core/utils/white_space_box.dart';
import 'package:movie_app/view/pages/home/widgets/image_list_slider_widget.dart';
import 'package:movie_app/view/pages/home/widgets/movie_list_widget.dart';
import 'package:movie_app/view/pages/home/widgets/toprated_movie_list_widget.dart';
import 'package:movie_app/view/widgets/shimer_effect/home_page_shimmer.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          AppText.appTitle,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      //body
      body: ref.watch(homePageApiProvider).when(
            data: (data) => SingleChildScrollView(
              child: Column(
                children: [
                  // height spacer
                  WhiteSpaceBox.spacerBox(context: context, height: 0.02),
                  // image slider section
                  ImageListSliderWidget(results: data[0].results),
                  // height spacer
                  WhiteSpaceBox.spacerBox(context: context, height: 0.02),
                  //Top Rated movie list
                  TopRateMovieListWidget(
                    title: "Top Rated",
                    result: data[1].results,
                  ),
                  // Now Playing Movies list
                  MovieListWidget(
                    title: "Now Playing",
                    result: data[2].results,
                  ),
                  // Popular movie list
                  MovieListWidget(
                    title: "Popular",
                    result: data[3].results,
                  ),
                  // upcomimg movielist
                  MovieListWidget(
                    title: "Upcoming",
                    result: data[4].results,
                  ),
                ],
              ),
            ),
            error: (error, stackTrace) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // text for errors
                  const Text("Some error occured please relod it"),
                  // height space
                  WhiteSpaceBox.spacerBox(context: context, height: 0.02),
                  // reload button
                  IconButton(
                    onPressed: () {
                      ref.invalidate(homePageApiProvider);
                    },
                    icon: const Icon(Icons.replay_outlined),
                  ),
                ],
              ),
            ),
            // shimmer loading
            loading: () => const HomePageShimmer(),
          ),
    );
  }
}
