// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Movie movie, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie, List<Review> reviews)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMovieDetailState value) loading,
    required TResult Function(SuccessMovieDetailState value) success,
    required TResult Function(EmptyMovieDetailState value) empty,
    required TResult Function(ErrorMovieDetailState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMovieDetailState value)? loading,
    TResult? Function(SuccessMovieDetailState value)? success,
    TResult? Function(EmptyMovieDetailState value)? empty,
    TResult? Function(ErrorMovieDetailState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMovieDetailState value)? loading,
    TResult Function(SuccessMovieDetailState value)? success,
    TResult Function(EmptyMovieDetailState value)? empty,
    TResult Function(ErrorMovieDetailState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingMovieDetailStateCopyWith<$Res> {
  factory _$$LoadingMovieDetailStateCopyWith(_$LoadingMovieDetailState value,
          $Res Function(_$LoadingMovieDetailState) then) =
      __$$LoadingMovieDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$LoadingMovieDetailState>
    implements _$$LoadingMovieDetailStateCopyWith<$Res> {
  __$$LoadingMovieDetailStateCopyWithImpl(_$LoadingMovieDetailState _value,
      $Res Function(_$LoadingMovieDetailState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMovieDetailState implements LoadingMovieDetailState {
  _$LoadingMovieDetailState();

  @override
  String toString() {
    return 'MovieDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMovieDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Movie movie, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie, List<Review> reviews)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMovieDetailState value) loading,
    required TResult Function(SuccessMovieDetailState value) success,
    required TResult Function(EmptyMovieDetailState value) empty,
    required TResult Function(ErrorMovieDetailState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMovieDetailState value)? loading,
    TResult? Function(SuccessMovieDetailState value)? success,
    TResult? Function(EmptyMovieDetailState value)? empty,
    TResult? Function(ErrorMovieDetailState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMovieDetailState value)? loading,
    TResult Function(SuccessMovieDetailState value)? success,
    TResult Function(EmptyMovieDetailState value)? empty,
    TResult Function(ErrorMovieDetailState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMovieDetailState implements MovieDetailState {
  factory LoadingMovieDetailState() = _$LoadingMovieDetailState;
}

/// @nodoc
abstract class _$$SuccessMovieDetailStateCopyWith<$Res> {
  factory _$$SuccessMovieDetailStateCopyWith(_$SuccessMovieDetailState value,
          $Res Function(_$SuccessMovieDetailState) then) =
      __$$SuccessMovieDetailStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie, List<Review> reviews});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$SuccessMovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$SuccessMovieDetailState>
    implements _$$SuccessMovieDetailStateCopyWith<$Res> {
  __$$SuccessMovieDetailStateCopyWithImpl(_$SuccessMovieDetailState _value,
      $Res Function(_$SuccessMovieDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? reviews = null,
  }) {
    return _then(_$SuccessMovieDetailState(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$SuccessMovieDetailState implements SuccessMovieDetailState {
  _$SuccessMovieDetailState(this.movie, this.reviews);

  @override
  final Movie movie;
  @override
  final List<Review> reviews;

  @override
  String toString() {
    return 'MovieDetailState.success(movie: $movie, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMovieDetailState &&
            (identical(other.movie, movie) || other.movie == movie) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, movie, const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMovieDetailStateCopyWith<_$SuccessMovieDetailState> get copyWith =>
      __$$SuccessMovieDetailStateCopyWithImpl<_$SuccessMovieDetailState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return success(movie, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Movie movie, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return success?.call(movie, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie, List<Review> reviews)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movie, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMovieDetailState value) loading,
    required TResult Function(SuccessMovieDetailState value) success,
    required TResult Function(EmptyMovieDetailState value) empty,
    required TResult Function(ErrorMovieDetailState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMovieDetailState value)? loading,
    TResult? Function(SuccessMovieDetailState value)? success,
    TResult? Function(EmptyMovieDetailState value)? empty,
    TResult? Function(ErrorMovieDetailState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMovieDetailState value)? loading,
    TResult Function(SuccessMovieDetailState value)? success,
    TResult Function(EmptyMovieDetailState value)? empty,
    TResult Function(ErrorMovieDetailState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessMovieDetailState implements MovieDetailState {
  factory SuccessMovieDetailState(
          final Movie movie, final List<Review> reviews) =
      _$SuccessMovieDetailState;

  Movie get movie;
  List<Review> get reviews;
  @JsonKey(ignore: true)
  _$$SuccessMovieDetailStateCopyWith<_$SuccessMovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyMovieDetailStateCopyWith<$Res> {
  factory _$$EmptyMovieDetailStateCopyWith(_$EmptyMovieDetailState value,
          $Res Function(_$EmptyMovieDetailState) then) =
      __$$EmptyMovieDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyMovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$EmptyMovieDetailState>
    implements _$$EmptyMovieDetailStateCopyWith<$Res> {
  __$$EmptyMovieDetailStateCopyWithImpl(_$EmptyMovieDetailState _value,
      $Res Function(_$EmptyMovieDetailState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyMovieDetailState implements EmptyMovieDetailState {
  _$EmptyMovieDetailState();

  @override
  String toString() {
    return 'MovieDetailState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyMovieDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Movie movie, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie, List<Review> reviews)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMovieDetailState value) loading,
    required TResult Function(SuccessMovieDetailState value) success,
    required TResult Function(EmptyMovieDetailState value) empty,
    required TResult Function(ErrorMovieDetailState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMovieDetailState value)? loading,
    TResult? Function(SuccessMovieDetailState value)? success,
    TResult? Function(EmptyMovieDetailState value)? empty,
    TResult? Function(ErrorMovieDetailState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMovieDetailState value)? loading,
    TResult Function(SuccessMovieDetailState value)? success,
    TResult Function(EmptyMovieDetailState value)? empty,
    TResult Function(ErrorMovieDetailState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyMovieDetailState implements MovieDetailState {
  factory EmptyMovieDetailState() = _$EmptyMovieDetailState;
}

/// @nodoc
abstract class _$$ErrorMovieDetailStateCopyWith<$Res> {
  factory _$$ErrorMovieDetailStateCopyWith(_$ErrorMovieDetailState value,
          $Res Function(_$ErrorMovieDetailState) then) =
      __$$ErrorMovieDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorMovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$ErrorMovieDetailState>
    implements _$$ErrorMovieDetailStateCopyWith<$Res> {
  __$$ErrorMovieDetailStateCopyWithImpl(_$ErrorMovieDetailState _value,
      $Res Function(_$ErrorMovieDetailState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorMovieDetailState implements ErrorMovieDetailState {
  _$ErrorMovieDetailState();

  @override
  String toString() {
    return 'MovieDetailState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorMovieDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movie, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Movie movie, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movie, List<Review> reviews)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMovieDetailState value) loading,
    required TResult Function(SuccessMovieDetailState value) success,
    required TResult Function(EmptyMovieDetailState value) empty,
    required TResult Function(ErrorMovieDetailState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMovieDetailState value)? loading,
    TResult? Function(SuccessMovieDetailState value)? success,
    TResult? Function(EmptyMovieDetailState value)? empty,
    TResult? Function(ErrorMovieDetailState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMovieDetailState value)? loading,
    TResult Function(SuccessMovieDetailState value)? success,
    TResult Function(EmptyMovieDetailState value)? empty,
    TResult Function(ErrorMovieDetailState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMovieDetailState implements MovieDetailState {
  factory ErrorMovieDetailState() = _$ErrorMovieDetailState;
}
