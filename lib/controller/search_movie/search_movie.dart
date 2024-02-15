import 'package:movie_app/services/api/search_movie/search_movie_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_movie.g.dart';

@riverpod
Future searchMovie(SearchMovieRef ref, {String? query}) {
  return SearchMovieService().fetchData(query: query);
}
