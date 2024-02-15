import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_app/core/constants/api_appends.dart';
import 'package:movie_app/core/main_failure/main_failure.dart';
import 'package:movie_app/model/movie_all_model/movie_all_model.dart';

class SearchMovieService {
  final Dio dio = Dio(
    BaseOptions(baseUrl: ApiAppends.baseUrl),
  );

  Future<MovieAllModel> fetchData({String? query}) async {
    try {
      Response response = await dio.get(
        'search/movie?query=$query&include_adult=true&language=en-US&page=1',
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
        return MovieAllModel.fromJson(response.data);
      }
      throw const MainFailure.clientFailure();
    } on DioException catch (e) {
      log(e.toString());
      throw const MainFailure.serverFailure();
    }
  }
}
