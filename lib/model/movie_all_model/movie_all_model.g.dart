// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_all_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieAllModelImpl _$$MovieAllModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieAllModelImpl(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$MovieAllModelImplToJson(_$MovieAllModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
