import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_app/core/constants/api_append.dart';
import 'package:movie_app/core/main_failure/main_failure.dart';
import 'package:movie_app/model/movie_all_model/movie_all_model.dart';

class UpcomingMovieService {
  final Dio dio = Dio(
    BaseOptions(baseUrl: ApiAppend.baseUrl),
  );

  Future<MovieAllModel> fetchData() async {
    try {
      Response response = await dio.get(
        'movie/upcoming?language=en-US',
        queryParameters: {
          "page": 1,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer ${ApiAppend.accesToken}',
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        return MovieAllModel.fromJson(response.data["results"]);
      }
      throw const MainFailure.clientFailure();
    } on DioException catch (e) {
      log(e.toString());
      throw const MainFailure.serverFailure();
    }
  }
}
