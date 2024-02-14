// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NowPlayingMovieModelImpl _$$NowPlayingMovieModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NowPlayingMovieModelImpl(
      dates: Map<String, String>.from(json['dates'] as Map),
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$NowPlayingMovieModelImplToJson(
        _$NowPlayingMovieModelImpl instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
