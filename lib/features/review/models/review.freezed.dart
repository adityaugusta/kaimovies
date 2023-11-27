// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  AuthorDetail get authorDetails => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call({AuthorDetail authorDetails, String content});

  $AuthorDetailCopyWith<$Res> get authorDetails;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorDetails = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      authorDetails: null == authorDetails
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetail,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorDetailCopyWith<$Res> get authorDetails {
    return $AuthorDetailCopyWith<$Res>(_value.authorDetails, (value) {
      return _then(_value.copyWith(authorDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthorDetail authorDetails, String content});

  @override
  $AuthorDetailCopyWith<$Res> get authorDetails;
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorDetails = null,
    Object? content = null,
  }) {
    return _then(_$ReviewImpl(
      authorDetails: null == authorDetails
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetail,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl({required this.authorDetails, required this.content});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final AuthorDetail authorDetails;
  @override
  final String content;

  @override
  String toString() {
    return 'Review(authorDetails: $authorDetails, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.authorDetails, authorDetails) ||
                other.authorDetails == authorDetails) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authorDetails, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final AuthorDetail authorDetails,
      required final String content}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  AuthorDetail get authorDetails;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorDetail _$AuthorDetailFromJson(Map<String, dynamic> json) {
  return _AuthorDetail.fromJson(json);
}

/// @nodoc
mixin _$AuthorDetail {
  String get name => throw _privateConstructorUsedError;
  String? get avatarPath => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorDetailCopyWith<AuthorDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorDetailCopyWith<$Res> {
  factory $AuthorDetailCopyWith(
          AuthorDetail value, $Res Function(AuthorDetail) then) =
      _$AuthorDetailCopyWithImpl<$Res, AuthorDetail>;
  @useResult
  $Res call({String name, String? avatarPath, double rating});
}

/// @nodoc
class _$AuthorDetailCopyWithImpl<$Res, $Val extends AuthorDetail>
    implements $AuthorDetailCopyWith<$Res> {
  _$AuthorDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarPath = freezed,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorDetailImplCopyWith<$Res>
    implements $AuthorDetailCopyWith<$Res> {
  factory _$$AuthorDetailImplCopyWith(
          _$AuthorDetailImpl value, $Res Function(_$AuthorDetailImpl) then) =
      __$$AuthorDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? avatarPath, double rating});
}

/// @nodoc
class __$$AuthorDetailImplCopyWithImpl<$Res>
    extends _$AuthorDetailCopyWithImpl<$Res, _$AuthorDetailImpl>
    implements _$$AuthorDetailImplCopyWith<$Res> {
  __$$AuthorDetailImplCopyWithImpl(
      _$AuthorDetailImpl _value, $Res Function(_$AuthorDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarPath = freezed,
    Object? rating = null,
  }) {
    return _then(_$AuthorDetailImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorDetailImpl implements _AuthorDetail {
  const _$AuthorDetailImpl(
      {required this.name, this.avatarPath, this.rating = 0});

  factory _$AuthorDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorDetailImplFromJson(json);

  @override
  final String name;
  @override
  final String? avatarPath;
  @override
  @JsonKey()
  final double rating;

  @override
  String toString() {
    return 'AuthorDetail(name: $name, avatarPath: $avatarPath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorDetailImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, avatarPath, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorDetailImplCopyWith<_$AuthorDetailImpl> get copyWith =>
      __$$AuthorDetailImplCopyWithImpl<_$AuthorDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorDetailImplToJson(
      this,
    );
  }
}

abstract class _AuthorDetail implements AuthorDetail {
  const factory _AuthorDetail(
      {required final String name,
      final String? avatarPath,
      final double rating}) = _$AuthorDetailImpl;

  factory _AuthorDetail.fromJson(Map<String, dynamic> json) =
      _$AuthorDetailImpl.fromJson;

  @override
  String get name;
  @override
  String? get avatarPath;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$AuthorDetailImplCopyWith<_$AuthorDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
