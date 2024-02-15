import 'package:movie_app/model/movie_all_model/movie_all_model.dart';
import 'package:movie_app/services/api/now_playing_movie/now_playing_movie_service.dart';
import 'package:movie_app/services/api/popular_movie/popular_movie_service.dart';
import 'package:movie_app/services/api/top_rated/movie_list_service.dart';
import 'package:movie_app/services/api/trending_all/trending_all_service.dart';
import 'package:movie_app/services/api/upcoming_movie/upcoming_movie_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_api.g.dart';

@riverpod
Future<List<MovieAllModel>> homePageApi(HomePageApiRef ref) async {
  return await Future.wait([
    TrendingAllService().fetchData(),
    TopRatedMovieService().fetchData(),
    NowPlayingMovieService().fetchData(),
    PopularMovieService().fetchData(),
    UpcomingMovieService().fetchData(),
  ]);
}
