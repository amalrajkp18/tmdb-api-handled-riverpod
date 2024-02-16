import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_app/core/constants/api_append.dart';
import 'package:movie_app/core/main_failure/main_failure.dart';
import 'package:movie_app/model/movie_result_model/movie_result_model.dart';

class SearchMovieService {
  final Dio dio = Dio(
    BaseOptions(baseUrl: ApiAppend.baseUrl),
  );

  Future<MovieResultModel> fetchData({String? query}) async {
    try {
      Response response = await dio.get(
        'search/movie?query=$query&include_adult=true&language=en-US&page=1',
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
        return MovieResultModel.fromJson(response.data["results"]);
      }
      throw const MainFailure.clientFailure();
    } on DioException catch (e) {
      log(e.toString());
      throw const MainFailure.serverFailure();
    }
  }
}
