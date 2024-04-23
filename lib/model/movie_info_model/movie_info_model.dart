// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_info_model.freezed.dart';
part 'movie_info_model.g.dart';

@freezed
class MovieInfoModel with _$MovieInfoModel {
  factory MovieInfoModel({
    bool? adult,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "genre_ids") List<int>? genreIds,
    int? id,
    @JsonKey(name: "original_language") String? originalLanguage,
    @JsonKey(name: "original_title") String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "release_date") DateTime? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "vote_count") int? voteCount,
  }) = _MovieInfoModel;

  factory MovieInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MovieInfoModelFromJson(json);
}
