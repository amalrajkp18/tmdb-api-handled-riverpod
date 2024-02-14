// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/model/result_model/result_model.dart';

part 'movie_all_model.freezed.dart';
part 'movie_all_model.g.dart';

@freezed
class MovieAllModel with _$MovieAllModel {
  factory MovieAllModel({
    required int page,
    required List<ResultModel> results,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "total_results") required int totalResults,
  }) = _MovieAllModel;

  factory MovieAllModel.fromJson(Map<String, dynamic> json) =>
      _$MovieAllModelFromJson(json);
}
