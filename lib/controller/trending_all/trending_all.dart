import 'package:movie_app/model/movie_all_model/movie_all_model.dart';
import 'package:movie_app/services/api/trending_all/trending_all_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'trending_all.g.dart';

@riverpod
Future<MovieAllModel> trendingAll(TrendingAllRef ref) {
  return TrendingAllService().fetchData();
}
