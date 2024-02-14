import 'package:movie_app/model/movie_all_model/movie_all_model.dart';
import 'package:movie_app/services/api/top_rated/movie_list_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'top_rated_movies.g.dart';

@riverpod
Future<MovieAllModel> topRatedMovies(TopRatedMoviesRef ref) {
  return TopRatedMovieService().fetchData();
}
