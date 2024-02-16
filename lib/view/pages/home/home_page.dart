import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/controller/now_playing_movies/now_playing_movies.dart';
import 'package:movie_app/controller/top_rated_movies/top_rated_movies.dart';
import 'package:movie_app/core/constants/api_append.dart';
import 'package:movie_app/core/constants/app_text.dart';
import 'package:movie_app/core/utils/white_space_box.dart';
import 'package:movie_app/view/pages/home/widgets/image_list_slider_widget.dart';
import 'package:movie_app/view/pages/home/widgets/movie_list_widget.dart';
import 'package:movie_app/view/pages/home/widgets/toprated_movie_list_widget.dart';
import 'package:movie_app/view/widgets/shimer_effect/imagelist_shimmer_effect.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // height spacer
            WhiteSpaceBox.spacerBox(context: context, height: 0.02),
            // image slider section
            const ImageListSliderWidget(),
            // height spacer
            WhiteSpaceBox.spacerBox(context: context, height: 0.02),
            //Top Rated
            Consumer(
              builder: (BuildContext context, WidgetRef ref, _) {
                return ref.watch(topRatedMoviesProvider).when(
                      data: (data) => TopRateMovieListWidget(
                        title: "Top Rated",
                        result: data.results,
                      ),
                      error: (error, stackTrace) => Center(
                        child: Text(error.toString()),
                      ),
                      // shimmer effect loading
                      loading: () => const MovieListShimmer(title: "Top Rated"),
                    );
              },
            ),
            // Now Playing Movies
            Consumer(
              builder: (BuildContext context, WidgetRef ref, _) {
                return ref.watch(nowPlayingMoviesProvider).when(
                      data: (data) => MovieListWidget(
                        title: "Now Playing",
                        result: data.results,
                      ),
                      error: (error, stackTrace) => Center(
                        child: Text(error.toString()),
                      ),
                      // shimmer effect loading
                      loading: () => const MovieListShimmer(title: "Top Rated"),
                    );
              },
            ),
            // Popular
            Consumer(
              builder: (BuildContext context, WidgetRef ref, _) {
                return ref.watch(nowPlayingMoviesProvider).when(
                      data: (data) => MovieListWidget(
                        title: "Popular",
                        result: data.results,
                      ),
                      error: (error, stackTrace) => Center(
                        child: Text(error.toString()),
                      ),
                      // shimmer effect loading
                      loading: () => const MovieListShimmer(title: "Top Rated"),
                    );
              },
            ),
            // Upcoming
            Consumer(
              builder: (BuildContext context, WidgetRef ref, _) {
                return ref.watch(nowPlayingMoviesProvider).when(
                      data: (data) => MovieListWidget(
                        title: "Upcoming",
                        result: data.results,
                      ),
                      error: (error, stackTrace) => Center(
                        child: Text(error.toString()),
                      ),
                      // shimmer effect loading
                      loading: () => const MovieListShimmer(title: "Top Rated"),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
