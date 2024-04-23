import 'package:movie_app/model/movie_info_model/movie_info_model.dart';
import 'package:movie_app/services/api_services/movie_list_api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_api.g.dart';

@riverpod
Future<List<List<MovieInfoModel>>> homePageApi(HomePageApiRef ref) async {
  return await Future.wait(
    [
      // trending movie api
      MovieListApiServices.fetchData(url: 'trending/movie/day?language=en-US'),
      // Toprated movie api
      MovieListApiServices.fetchData(
        url: 'movie/top_rated?language=en-US',
      ),
      // Nowplaying movie api
      MovieListApiServices.fetchData(
        url: 'movie/now_playing?language=en-US',
      ),
      // Popular movie api
      MovieListApiServices.fetchData(
        url: 'movie/popular?language=en-US',
      ),
      // Upcoming movie api
      MovieListApiServices.fetchData(
        url: 'movie/upcoming?language=en-US',
      ),
    ],
  );
}
