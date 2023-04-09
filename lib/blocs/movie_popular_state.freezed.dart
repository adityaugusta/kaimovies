// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_popular_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviePopularState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMoviePopularState value) loading,
    required TResult Function(SuccessMoviePopularState value) success,
    required TResult Function(EmptyMoviePopularState value) empty,
    required TResult Function(ErrorMoviePopularState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoviePopularState value)? loading,
    TResult? Function(SuccessMoviePopularState value)? success,
    TResult? Function(EmptyMoviePopularState value)? empty,
    TResult? Function(ErrorMoviePopularState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoviePopularState value)? loading,
    TResult Function(SuccessMoviePopularState value)? success,
    TResult Function(EmptyMoviePopularState value)? empty,
    TResult Function(ErrorMoviePopularState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviePopularStateCopyWith<$Res> {
  factory $MoviePopularStateCopyWith(
          MoviePopularState value, $Res Function(MoviePopularState) then) =
      _$MoviePopularStateCopyWithImpl<$Res, MoviePopularState>;
}

/// @nodoc
class _$MoviePopularStateCopyWithImpl<$Res, $Val extends MoviePopularState>
    implements $MoviePopularStateCopyWith<$Res> {
  _$MoviePopularStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingMoviePopularStateCopyWith<$Res> {
  factory _$$LoadingMoviePopularStateCopyWith(_$LoadingMoviePopularState value,
          $Res Function(_$LoadingMoviePopularState) then) =
      __$$LoadingMoviePopularStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMoviePopularStateCopyWithImpl<$Res>
    extends _$MoviePopularStateCopyWithImpl<$Res, _$LoadingMoviePopularState>
    implements _$$LoadingMoviePopularStateCopyWith<$Res> {
  __$$LoadingMoviePopularStateCopyWithImpl(_$LoadingMoviePopularState _value,
      $Res Function(_$LoadingMoviePopularState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMoviePopularState implements LoadingMoviePopularState {
  _$LoadingMoviePopularState();

  @override
  String toString() {
    return 'MoviePopularState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMoviePopularState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
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
    required TResult Function(LoadingMoviePopularState value) loading,
    required TResult Function(SuccessMoviePopularState value) success,
    required TResult Function(EmptyMoviePopularState value) empty,
    required TResult Function(ErrorMoviePopularState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoviePopularState value)? loading,
    TResult? Function(SuccessMoviePopularState value)? success,
    TResult? Function(EmptyMoviePopularState value)? empty,
    TResult? Function(ErrorMoviePopularState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoviePopularState value)? loading,
    TResult Function(SuccessMoviePopularState value)? success,
    TResult Function(EmptyMoviePopularState value)? empty,
    TResult Function(ErrorMoviePopularState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMoviePopularState implements MoviePopularState {
  factory LoadingMoviePopularState() = _$LoadingMoviePopularState;
}

/// @nodoc
abstract class _$$SuccessMoviePopularStateCopyWith<$Res> {
  factory _$$SuccessMoviePopularStateCopyWith(_$SuccessMoviePopularState value,
          $Res Function(_$SuccessMoviePopularState) then) =
      __$$SuccessMoviePopularStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$SuccessMoviePopularStateCopyWithImpl<$Res>
    extends _$MoviePopularStateCopyWithImpl<$Res, _$SuccessMoviePopularState>
    implements _$$SuccessMoviePopularStateCopyWith<$Res> {
  __$$SuccessMoviePopularStateCopyWithImpl(_$SuccessMoviePopularState _value,
      $Res Function(_$SuccessMoviePopularState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$SuccessMoviePopularState(
      null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$SuccessMoviePopularState implements SuccessMoviePopularState {
  _$SuccessMoviePopularState(this.movies);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'MoviePopularState.success(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMoviePopularState &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMoviePopularStateCopyWith<_$SuccessMoviePopularState>
      get copyWith =>
          __$$SuccessMoviePopularStateCopyWithImpl<_$SuccessMoviePopularState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return success(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return success?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMoviePopularState value) loading,
    required TResult Function(SuccessMoviePopularState value) success,
    required TResult Function(EmptyMoviePopularState value) empty,
    required TResult Function(ErrorMoviePopularState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoviePopularState value)? loading,
    TResult? Function(SuccessMoviePopularState value)? success,
    TResult? Function(EmptyMoviePopularState value)? empty,
    TResult? Function(ErrorMoviePopularState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoviePopularState value)? loading,
    TResult Function(SuccessMoviePopularState value)? success,
    TResult Function(EmptyMoviePopularState value)? empty,
    TResult Function(ErrorMoviePopularState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessMoviePopularState implements MoviePopularState {
  factory SuccessMoviePopularState(final List<Movie> movies) =
      _$SuccessMoviePopularState;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  _$$SuccessMoviePopularStateCopyWith<_$SuccessMoviePopularState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyMoviePopularStateCopyWith<$Res> {
  factory _$$EmptyMoviePopularStateCopyWith(_$EmptyMoviePopularState value,
          $Res Function(_$EmptyMoviePopularState) then) =
      __$$EmptyMoviePopularStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyMoviePopularStateCopyWithImpl<$Res>
    extends _$MoviePopularStateCopyWithImpl<$Res, _$EmptyMoviePopularState>
    implements _$$EmptyMoviePopularStateCopyWith<$Res> {
  __$$EmptyMoviePopularStateCopyWithImpl(_$EmptyMoviePopularState _value,
      $Res Function(_$EmptyMoviePopularState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyMoviePopularState implements EmptyMoviePopularState {
  _$EmptyMoviePopularState();

  @override
  String toString() {
    return 'MoviePopularState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyMoviePopularState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
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
    required TResult Function(LoadingMoviePopularState value) loading,
    required TResult Function(SuccessMoviePopularState value) success,
    required TResult Function(EmptyMoviePopularState value) empty,
    required TResult Function(ErrorMoviePopularState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoviePopularState value)? loading,
    TResult? Function(SuccessMoviePopularState value)? success,
    TResult? Function(EmptyMoviePopularState value)? empty,
    TResult? Function(ErrorMoviePopularState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoviePopularState value)? loading,
    TResult Function(SuccessMoviePopularState value)? success,
    TResult Function(EmptyMoviePopularState value)? empty,
    TResult Function(ErrorMoviePopularState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyMoviePopularState implements MoviePopularState {
  factory EmptyMoviePopularState() = _$EmptyMoviePopularState;
}

/// @nodoc
abstract class _$$ErrorMoviePopularStateCopyWith<$Res> {
  factory _$$ErrorMoviePopularStateCopyWith(_$ErrorMoviePopularState value,
          $Res Function(_$ErrorMoviePopularState) then) =
      __$$ErrorMoviePopularStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorMoviePopularStateCopyWithImpl<$Res>
    extends _$MoviePopularStateCopyWithImpl<$Res, _$ErrorMoviePopularState>
    implements _$$ErrorMoviePopularStateCopyWith<$Res> {
  __$$ErrorMoviePopularStateCopyWithImpl(_$ErrorMoviePopularState _value,
      $Res Function(_$ErrorMoviePopularState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorMoviePopularState implements ErrorMoviePopularState {
  _$ErrorMoviePopularState();

  @override
  String toString() {
    return 'MoviePopularState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorMoviePopularState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
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
    required TResult Function(LoadingMoviePopularState value) loading,
    required TResult Function(SuccessMoviePopularState value) success,
    required TResult Function(EmptyMoviePopularState value) empty,
    required TResult Function(ErrorMoviePopularState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoviePopularState value)? loading,
    TResult? Function(SuccessMoviePopularState value)? success,
    TResult? Function(EmptyMoviePopularState value)? empty,
    TResult? Function(ErrorMoviePopularState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoviePopularState value)? loading,
    TResult Function(SuccessMoviePopularState value)? success,
    TResult Function(EmptyMoviePopularState value)? empty,
    TResult Function(ErrorMoviePopularState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMoviePopularState implements MoviePopularState {
  factory ErrorMoviePopularState() = _$ErrorMoviePopularState;
}
