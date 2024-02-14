import 'package:movie_app/model/now_playing_movie_model/now_playing_movie_model.dart';
import 'package:movie_app/services/api/now_playing_movie_service/now_playing_movie_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'now_playing_movies.g.dart';

@riverpod
Future<NowPlayingMovieModel> nowPlayingMovies(NowPlayingMoviesRef ref) {
  return NowPlayingMovieService().fetchData();
}
