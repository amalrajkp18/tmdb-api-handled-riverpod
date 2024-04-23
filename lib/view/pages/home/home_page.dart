import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/controller/home_page_api/home_page_api.dart';
import 'package:movie_app/core/constants/app_text.dart';
import 'package:movie_app/core/utils/white_space_box.dart';
import 'package:movie_app/view/pages/home/widgets/image_list_slider_widget.dart';
import 'package:movie_app/view/pages/home/widgets/movie_list_widget.dart';
import 'package:movie_app/view/pages/home/widgets/trending_movie_list_widget.dart';
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
      body: ref.watch(homePageApiProvider).isRefreshing
          ? const HomePageShimmer()
          : ref.watch(homePageApiProvider).when(
                data: (data) {
                  data[2].shuffle();
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        // trending movie
                        ImageListSliderWidget(
                          movieInfoList: data[0],
                        ),
                        // Toprated movie
                        TrendingMovieListWidget(
                          title: "Trending",
                          result: data[1],
                        ),
                        // Nowplaying movie
                        MovieListWidget(
                          title: "Now Playing",
                          result: data[2],
                        ),
                        // Popular movie
                        MovieListWidget(
                          title: "Popular",
                          result: data[3],
                        ),
                        // Upcoming movie
                        MovieListWidget(
                          title: "Upcoming",
                          result: data[4],
                        ),
                      ],
                    ),
                  );
                },
                error: (error, stackTrace) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // error text
                      Text(error.toString()),
                      // height space
                      WhiteSpaceBox.spacerBox(context: context, height: 0.02),
                      // reload button
                      IconButton(
                        onPressed: () {
                          ref.invalidate(homePageApiProvider);
                        },
                        icon: const Icon(Icons.replay_outlined),
                      )
                    ],
                  ),
                ),
                loading: () => const HomePageShimmer(),
              ),
    );
  }
}
