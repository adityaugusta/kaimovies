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
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthorDetail authorDetails, String content});

  @override
  $AuthorDetailCopyWith<$Res> get authorDetails;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorDetails = null,
    Object? content = null,
  }) {
    return _then(_$_Review(
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
class _$_Review implements _Review {
  const _$_Review({required this.authorDetails, required this.content});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

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
            other is _$_Review &&
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
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final AuthorDetail authorDetails,
      required final String content}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  AuthorDetail get authorDetails;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
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
abstract class _$$_AuthorDetailCopyWith<$Res>
    implements $AuthorDetailCopyWith<$Res> {
  factory _$$_AuthorDetailCopyWith(
          _$_AuthorDetail value, $Res Function(_$_AuthorDetail) then) =
      __$$_AuthorDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? avatarPath, double rating});
}

/// @nodoc
class __$$_AuthorDetailCopyWithImpl<$Res>
    extends _$AuthorDetailCopyWithImpl<$Res, _$_AuthorDetail>
    implements _$$_AuthorDetailCopyWith<$Res> {
  __$$_AuthorDetailCopyWithImpl(
      _$_AuthorDetail _value, $Res Function(_$_AuthorDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarPath = freezed,
    Object? rating = null,
  }) {
    return _then(_$_AuthorDetail(
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
class _$_AuthorDetail implements _AuthorDetail {
  const _$_AuthorDetail({required this.name, this.avatarPath, this.rating = 0});

  factory _$_AuthorDetail.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorDetailFromJson(json);

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
            other is _$_AuthorDetail &&
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
  _$$_AuthorDetailCopyWith<_$_AuthorDetail> get copyWith =>
      __$$_AuthorDetailCopyWithImpl<_$_AuthorDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorDetailToJson(
      this,
    );
  }
}

abstract class _AuthorDetail implements AuthorDetail {
  const factory _AuthorDetail(
      {required final String name,
      final String? avatarPath,
      final double rating}) = _$_AuthorDetail;

  factory _AuthorDetail.fromJson(Map<String, dynamic> json) =
      _$_AuthorDetail.fromJson;

  @override
  String get name;
  @override
  String? get avatarPath;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorDetailCopyWith<_$_AuthorDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
