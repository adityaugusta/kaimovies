// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tv _$TvFromJson(Map<String, dynamic> json) {
  return _Tv.fromJson(json);
}

/// @nodoc
mixin _$Tv {
  int get id => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get firstAirDate => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvCopyWith<Tv> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvCopyWith<$Res> {
  factory $TvCopyWith(Tv value, $Res Function(Tv) then) =
      _$TvCopyWithImpl<$Res, Tv>;
  @useResult
  $Res call(
      {int id,
      String? posterPath,
      String? backdropPath,
      String name,
      String overview,
      String firstAirDate,
      double popularity,
      double voteAverage});
}

/// @nodoc
class _$TvCopyWithImpl<$Res, $Val extends Tv> implements $TvCopyWith<$Res> {
  _$TvCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? name = null,
    Object? overview = null,
    Object? firstAirDate = null,
    Object? popularity = null,
    Object? voteAverage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvImplCopyWith<$Res> implements $TvCopyWith<$Res> {
  factory _$$TvImplCopyWith(_$TvImpl value, $Res Function(_$TvImpl) then) =
      __$$TvImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? posterPath,
      String? backdropPath,
      String name,
      String overview,
      String firstAirDate,
      double popularity,
      double voteAverage});
}

/// @nodoc
class __$$TvImplCopyWithImpl<$Res> extends _$TvCopyWithImpl<$Res, _$TvImpl>
    implements _$$TvImplCopyWith<$Res> {
  __$$TvImplCopyWithImpl(_$TvImpl _value, $Res Function(_$TvImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? name = null,
    Object? overview = null,
    Object? firstAirDate = null,
    Object? popularity = null,
    Object? voteAverage = null,
  }) {
    return _then(_$TvImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvImpl implements _Tv {
  const _$TvImpl(
      {required this.id,
      this.posterPath,
      this.backdropPath,
      required this.name,
      required this.overview,
      required this.firstAirDate,
      this.popularity = 0,
      this.voteAverage = 0});

  factory _$TvImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvImplFromJson(json);

  @override
  final int id;
  @override
  final String? posterPath;
  @override
  final String? backdropPath;
  @override
  final String name;
  @override
  final String overview;
  @override
  final String firstAirDate;
  @override
  @JsonKey()
  final double popularity;
  @override
  @JsonKey()
  final double voteAverage;

  @override
  String toString() {
    return 'Tv(id: $id, posterPath: $posterPath, backdropPath: $backdropPath, name: $name, overview: $overview, firstAirDate: $firstAirDate, popularity: $popularity, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, posterPath, backdropPath,
      name, overview, firstAirDate, popularity, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvImplCopyWith<_$TvImpl> get copyWith =>
      __$$TvImplCopyWithImpl<_$TvImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvImplToJson(
      this,
    );
  }
}

abstract class _Tv implements Tv {
  const factory _Tv(
      {required final int id,
      final String? posterPath,
      final String? backdropPath,
      required final String name,
      required final String overview,
      required final String firstAirDate,
      final double popularity,
      final double voteAverage}) = _$TvImpl;

  factory _Tv.fromJson(Map<String, dynamic> json) = _$TvImpl.fromJson;

  @override
  int get id;
  @override
  String? get posterPath;
  @override
  String? get backdropPath;
  @override
  String get name;
  @override
  String get overview;
  @override
  String get firstAirDate;
  @override
  double get popularity;
  @override
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$TvImplCopyWith<_$TvImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
