// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_all_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieAllModel _$MovieAllModelFromJson(Map<String, dynamic> json) {
  return _MovieAllModel.fromJson(json);
}

/// @nodoc
mixin _$MovieAllModel {
  int get page => throw _privateConstructorUsedError;
  List<ResultModel> get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieAllModelCopyWith<MovieAllModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieAllModelCopyWith<$Res> {
  factory $MovieAllModelCopyWith(
          MovieAllModel value, $Res Function(MovieAllModel) then) =
      _$MovieAllModelCopyWithImpl<$Res, MovieAllModel>;
  @useResult
  $Res call(
      {int page,
      List<ResultModel> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class _$MovieAllModelCopyWithImpl<$Res, $Val extends MovieAllModel>
    implements $MovieAllModelCopyWith<$Res> {
  _$MovieAllModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieAllModelImplCopyWith<$Res>
    implements $MovieAllModelCopyWith<$Res> {
  factory _$$MovieAllModelImplCopyWith(
          _$MovieAllModelImpl value, $Res Function(_$MovieAllModelImpl) then) =
      __$$MovieAllModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<ResultModel> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class __$$MovieAllModelImplCopyWithImpl<$Res>
    extends _$MovieAllModelCopyWithImpl<$Res, _$MovieAllModelImpl>
    implements _$$MovieAllModelImplCopyWith<$Res> {
  __$$MovieAllModelImplCopyWithImpl(
      _$MovieAllModelImpl _value, $Res Function(_$MovieAllModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$MovieAllModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieAllModelImpl implements _MovieAllModel {
  _$MovieAllModelImpl(
      {required this.page,
      required final List<ResultModel> results,
      @JsonKey(name: "total_pages") required this.totalPages,
      @JsonKey(name: "total_results") required this.totalResults})
      : _results = results;

  factory _$MovieAllModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieAllModelImplFromJson(json);

  @override
  final int page;
  final List<ResultModel> _results;
  @override
  List<ResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: "total_pages")
  final int totalPages;
  @override
  @JsonKey(name: "total_results")
  final int totalResults;

  @override
  String toString() {
    return 'MovieAllModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieAllModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieAllModelImplCopyWith<_$MovieAllModelImpl> get copyWith =>
      __$$MovieAllModelImplCopyWithImpl<_$MovieAllModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieAllModelImplToJson(
      this,
    );
  }
}

abstract class _MovieAllModel implements MovieAllModel {
  factory _MovieAllModel(
          {required final int page,
          required final List<ResultModel> results,
          @JsonKey(name: "total_pages") required final int totalPages,
          @JsonKey(name: "total_results") required final int totalResults}) =
      _$MovieAllModelImpl;

  factory _MovieAllModel.fromJson(Map<String, dynamic> json) =
      _$MovieAllModelImpl.fromJson;

  @override
  int get page;
  @override
  List<ResultModel> get results;
  @override
  @JsonKey(name: "total_pages")
  int get totalPages;
  @override
  @JsonKey(name: "total_results")
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$MovieAllModelImplCopyWith<_$MovieAllModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
