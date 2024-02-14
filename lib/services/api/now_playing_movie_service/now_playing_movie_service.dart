import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_app/core/constants/api_appends.dart';
import 'package:movie_app/core/main_failure/main_failure.dart';
import 'package:movie_app/model/now_playing_movie_model/now_playing_movie_model.dart';

class NowPlayingMovieService {
  final Dio dio = Dio(
    BaseOptions(baseUrl: ApiAppends.baseUrl),
  );

  Future<NowPlayingMovieModel> fetchData() async {
    try {
      Response response = await dio.get(
        'movie/now_playing?language=en-US',
        queryParameters: {
          "page": 1,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer ${ApiAppends.accesToken}',
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        return NowPlayingMovieModel.fromJson(response.data);
      }
      throw const MainFailure.clientFailure();
    } on DioException catch (e) {
      log(e.toString());
      throw const MainFailure.serverFailure();
    }
  }
}
