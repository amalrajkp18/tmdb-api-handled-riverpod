// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/model/result_model/result_model.dart';

part 'now_playing_movie_model.freezed.dart';
part 'now_playing_movie_model.g.dart';

@freezed
class NowPlayingMovieModel with _$NowPlayingMovieModel {
  factory NowPlayingMovieModel({
    required Map<String, String> dates,
    required int page,
    required List<ResultModel> results,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "total_results") required int totalResults,
  }) = _NowPlayingMovieModel;

  factory NowPlayingMovieModel.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingMovieModelFromJson(json);
}
