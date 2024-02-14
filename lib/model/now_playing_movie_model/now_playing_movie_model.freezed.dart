// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NowPlayingMovieModel _$NowPlayingMovieModelFromJson(Map<String, dynamic> json) {
  return _NowPlayingMovieModel.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingMovieModel {
  Map<String, String> get dates => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<ResultModel> get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingMovieModelCopyWith<NowPlayingMovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingMovieModelCopyWith<$Res> {
  factory $NowPlayingMovieModelCopyWith(NowPlayingMovieModel value,
          $Res Function(NowPlayingMovieModel) then) =
      _$NowPlayingMovieModelCopyWithImpl<$Res, NowPlayingMovieModel>;
  @useResult
  $Res call(
      {Map<String, String> dates,
      int page,
      List<ResultModel> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class _$NowPlayingMovieModelCopyWithImpl<$Res,
        $Val extends NowPlayingMovieModel>
    implements $NowPlayingMovieModelCopyWith<$Res> {
  _$NowPlayingMovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
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
abstract class _$$NowPlayingMovieModelImplCopyWith<$Res>
    implements $NowPlayingMovieModelCopyWith<$Res> {
  factory _$$NowPlayingMovieModelImplCopyWith(_$NowPlayingMovieModelImpl value,
          $Res Function(_$NowPlayingMovieModelImpl) then) =
      __$$NowPlayingMovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> dates,
      int page,
      List<ResultModel> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class __$$NowPlayingMovieModelImplCopyWithImpl<$Res>
    extends _$NowPlayingMovieModelCopyWithImpl<$Res, _$NowPlayingMovieModelImpl>
    implements _$$NowPlayingMovieModelImplCopyWith<$Res> {
  __$$NowPlayingMovieModelImplCopyWithImpl(_$NowPlayingMovieModelImpl _value,
      $Res Function(_$NowPlayingMovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$NowPlayingMovieModelImpl(
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
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
class _$NowPlayingMovieModelImpl implements _NowPlayingMovieModel {
  _$NowPlayingMovieModelImpl(
      {required final Map<String, String> dates,
      required this.page,
      required final List<ResultModel> results,
      @JsonKey(name: "total_pages") required this.totalPages,
      @JsonKey(name: "total_results") required this.totalResults})
      : _dates = dates,
        _results = results;

  factory _$NowPlayingMovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingMovieModelImplFromJson(json);

  final Map<String, String> _dates;
  @override
  Map<String, String> get dates {
    if (_dates is EqualUnmodifiableMapView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dates);
  }

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
    return 'NowPlayingMovieModel(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingMovieModelImpl &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dates),
      page,
      const DeepCollectionEquality().hash(_results),
      totalPages,
      totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingMovieModelImplCopyWith<_$NowPlayingMovieModelImpl>
      get copyWith =>
          __$$NowPlayingMovieModelImplCopyWithImpl<_$NowPlayingMovieModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingMovieModelImplToJson(
      this,
    );
  }
}

abstract class _NowPlayingMovieModel implements NowPlayingMovieModel {
  factory _NowPlayingMovieModel(
          {required final Map<String, String> dates,
          required final int page,
          required final List<ResultModel> results,
          @JsonKey(name: "total_pages") required final int totalPages,
          @JsonKey(name: "total_results") required final int totalResults}) =
      _$NowPlayingMovieModelImpl;

  factory _NowPlayingMovieModel.fromJson(Map<String, dynamic> json) =
      _$NowPlayingMovieModelImpl.fromJson;

  @override
  Map<String, String> get dates;
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
  _$$NowPlayingMovieModelImplCopyWith<_$NowPlayingMovieModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
