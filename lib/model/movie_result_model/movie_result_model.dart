// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_result_model.freezed.dart';
part 'movie_result_model.g.dart';

@freezed
class MovieResultModel with _$MovieResultModel {
  factory MovieResultModel({
    bool? adult,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    int? id,
    String? title,
    @JsonKey(name: "original_language") String? originalLanguage,
    @JsonKey(name: "original_title") String? originalTitle,
    String? overview,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "media_type") String? mediaType,
    @JsonKey(name: "genre_ids") List<int>? genreIds,
    double? popularity,
    @JsonKey(name: "release_date") DateTime? releaseDate,
    bool? video,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "vote_count") int? voteCount,
    String? name,
    @JsonKey(name: "original_name") String? originalName,
    @JsonKey(name: "first_air_date") DateTime? firstAirDate,
    @JsonKey(name: "origin_country") List<String>? originCountry,
  }) = _MovieResultModel;

  factory MovieResultModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResultModelFromJson(json);
}
