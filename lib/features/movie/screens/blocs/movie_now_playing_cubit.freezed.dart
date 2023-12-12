// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_now_playing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieNowPlayingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ShowDetail> movies) success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ShowDetail> movies)? success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ShowDetail> movies)? success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMovieNowPlayingState value) initial,
    required TResult Function(LoadingMovieNowPlayingState value) loading,
    required TResult Function(SuccessMovieNowPlayingState value) success,
    required TResult Function(EmptyMovieNowPlayingState value) empty,
    required TResult Function(FailureMovieNowPlayingState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMovieNowPlayingState value)? initial,
    TResult? Function(LoadingMovieNowPlayingState value)? loading,
    TResult? Function(SuccessMovieNowPlayingState value)? success,
    TResult? Function(EmptyMovieNowPlayingState value)? empty,
    TResult? Function(FailureMovieNowPlayingState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieNowPlayingState value)? initial,
    TResult Function(LoadingMovieNowPlayingState value)? loading,
    TResult Function(SuccessMovieNowPlayingState value)? success,
    TResult Function(EmptyMovieNowPlayingState value)? empty,
    TResult Function(FailureMovieNowPlayingState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieNowPlayingStateCopyWith<$Res> {
  factory $MovieNowPlayingStateCopyWith(MovieNowPlayingState value,
          $Res Function(MovieNowPlayingState) then) =
      _$MovieNowPlayingStateCopyWithImpl<$Res, MovieNowPlayingState>;
}

/// @nodoc
class _$MovieNowPlayingStateCopyWithImpl<$Res,
        $Val extends MovieNowPlayingState>
    implements $MovieNowPlayingStateCopyWith<$Res> {
  _$MovieNowPlayingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialMovieNowPlayingStateImplCopyWith<$Res> {
  factory _$$InitialMovieNowPlayingStateImplCopyWith(
          _$InitialMovieNowPlayingStateImpl value,
          $Res Function(_$InitialMovieNowPlayingStateImpl) then) =
      __$$InitialMovieNowPlayingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialMovieNowPlayingStateImplCopyWithImpl<$Res>
    extends _$MovieNowPlayingStateCopyWithImpl<$Res,
        _$InitialMovieNowPlayingStateImpl>
    implements _$$InitialMovieNowPlayingStateImplCopyWith<$Res> {
  __$$InitialMovieNowPlayingStateImplCopyWithImpl(
      _$InitialMovieNowPlayingStateImpl _value,
      $Res Function(_$InitialMovieNowPlayingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialMovieNowPlayingStateImpl implements InitialMovieNowPlayingState {
  _$InitialMovieNowPlayingStateImpl();

  @override
  String toString() {
    return 'MovieNowPlayingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialMovieNowPlayingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ShowDetail> movies) success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ShowDetail> movies)? success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ShowDetail> movies)? success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMovieNowPlayingState value) initial,
    required TResult Function(LoadingMovieNowPlayingState value) loading,
    required TResult Function(SuccessMovieNowPlayingState value) success,
    required TResult Function(EmptyMovieNowPlayingState value) empty,
    required TResult Function(FailureMovieNowPlayingState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMovieNowPlayingState value)? initial,
    TResult? Function(LoadingMovieNowPlayingState value)? loading,
    TResult? Function(SuccessMovieNowPlayingState value)? success,
    TResult? Function(EmptyMovieNowPlayingState value)? empty,
    TResult? Function(FailureMovieNowPlayingState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieNowPlayingState value)? initial,
    TResult Function(LoadingMovieNowPlayingState value)? loading,
    TResult Function(SuccessMovieNowPlayingState value)? success,
    TResult Function(EmptyMovieNowPlayingState value)? empty,
    TResult Function(FailureMovieNowPlayingState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialMovieNowPlayingState implements MovieNowPlayingState {
  factory InitialMovieNowPlayingState() = _$InitialMovieNowPlayingStateImpl;
}

/// @nodoc
abstract class _$$LoadingMovieNowPlayingStateImplCopyWith<$Res> {
  factory _$$LoadingMovieNowPlayingStateImplCopyWith(
          _$LoadingMovieNowPlayingStateImpl value,
          $Res Function(_$LoadingMovieNowPlayingStateImpl) then) =
      __$$LoadingMovieNowPlayingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMovieNowPlayingStateImplCopyWithImpl<$Res>
    extends _$MovieNowPlayingStateCopyWithImpl<$Res,
        _$LoadingMovieNowPlayingStateImpl>
    implements _$$LoadingMovieNowPlayingStateImplCopyWith<$Res> {
  __$$LoadingMovieNowPlayingStateImplCopyWithImpl(
      _$LoadingMovieNowPlayingStateImpl _value,
      $Res Function(_$LoadingMovieNowPlayingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMovieNowPlayingStateImpl implements LoadingMovieNowPlayingState {
  _$LoadingMovieNowPlayingStateImpl();

  @override
  String toString() {
    return 'MovieNowPlayingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMovieNowPlayingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ShowDetail> movies) success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ShowDetail> movies)? success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ShowDetail> movies)? success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
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
    required TResult Function(InitialMovieNowPlayingState value) initial,
    required TResult Function(LoadingMovieNowPlayingState value) loading,
    required TResult Function(SuccessMovieNowPlayingState value) success,
    required TResult Function(EmptyMovieNowPlayingState value) empty,
    required TResult Function(FailureMovieNowPlayingState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMovieNowPlayingState value)? initial,
    TResult? Function(LoadingMovieNowPlayingState value)? loading,
    TResult? Function(SuccessMovieNowPlayingState value)? success,
    TResult? Function(EmptyMovieNowPlayingState value)? empty,
    TResult? Function(FailureMovieNowPlayingState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieNowPlayingState value)? initial,
    TResult Function(LoadingMovieNowPlayingState value)? loading,
    TResult Function(SuccessMovieNowPlayingState value)? success,
    TResult Function(EmptyMovieNowPlayingState value)? empty,
    TResult Function(FailureMovieNowPlayingState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMovieNowPlayingState implements MovieNowPlayingState {
  factory LoadingMovieNowPlayingState() = _$LoadingMovieNowPlayingStateImpl;
}

/// @nodoc
abstract class _$$SuccessMovieNowPlayingStateImplCopyWith<$Res> {
  factory _$$SuccessMovieNowPlayingStateImplCopyWith(
          _$SuccessMovieNowPlayingStateImpl value,
          $Res Function(_$SuccessMovieNowPlayingStateImpl) then) =
      __$$SuccessMovieNowPlayingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShowDetail> movies});
}

/// @nodoc
class __$$SuccessMovieNowPlayingStateImplCopyWithImpl<$Res>
    extends _$MovieNowPlayingStateCopyWithImpl<$Res,
        _$SuccessMovieNowPlayingStateImpl>
    implements _$$SuccessMovieNowPlayingStateImplCopyWith<$Res> {
  __$$SuccessMovieNowPlayingStateImplCopyWithImpl(
      _$SuccessMovieNowPlayingStateImpl _value,
      $Res Function(_$SuccessMovieNowPlayingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$SuccessMovieNowPlayingStateImpl(
      null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<ShowDetail>,
    ));
  }
}

/// @nodoc

class _$SuccessMovieNowPlayingStateImpl implements SuccessMovieNowPlayingState {
  _$SuccessMovieNowPlayingStateImpl(this.movies);

  @override
  final List<ShowDetail> movies;

  @override
  String toString() {
    return 'MovieNowPlayingState.success(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMovieNowPlayingStateImpl &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMovieNowPlayingStateImplCopyWith<_$SuccessMovieNowPlayingStateImpl>
      get copyWith => __$$SuccessMovieNowPlayingStateImplCopyWithImpl<
          _$SuccessMovieNowPlayingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ShowDetail> movies) success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return success(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ShowDetail> movies)? success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ShowDetail> movies)? success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
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
    required TResult Function(InitialMovieNowPlayingState value) initial,
    required TResult Function(LoadingMovieNowPlayingState value) loading,
    required TResult Function(SuccessMovieNowPlayingState value) success,
    required TResult Function(EmptyMovieNowPlayingState value) empty,
    required TResult Function(FailureMovieNowPlayingState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMovieNowPlayingState value)? initial,
    TResult? Function(LoadingMovieNowPlayingState value)? loading,
    TResult? Function(SuccessMovieNowPlayingState value)? success,
    TResult? Function(EmptyMovieNowPlayingState value)? empty,
    TResult? Function(FailureMovieNowPlayingState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieNowPlayingState value)? initial,
    TResult Function(LoadingMovieNowPlayingState value)? loading,
    TResult Function(SuccessMovieNowPlayingState value)? success,
    TResult Function(EmptyMovieNowPlayingState value)? empty,
    TResult Function(FailureMovieNowPlayingState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessMovieNowPlayingState implements MovieNowPlayingState {
  factory SuccessMovieNowPlayingState(final List<ShowDetail> movies) =
      _$SuccessMovieNowPlayingStateImpl;

  List<ShowDetail> get movies;
  @JsonKey(ignore: true)
  _$$SuccessMovieNowPlayingStateImplCopyWith<_$SuccessMovieNowPlayingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyMovieNowPlayingStateImplCopyWith<$Res> {
  factory _$$EmptyMovieNowPlayingStateImplCopyWith(
          _$EmptyMovieNowPlayingStateImpl value,
          $Res Function(_$EmptyMovieNowPlayingStateImpl) then) =
      __$$EmptyMovieNowPlayingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyMovieNowPlayingStateImplCopyWithImpl<$Res>
    extends _$MovieNowPlayingStateCopyWithImpl<$Res,
        _$EmptyMovieNowPlayingStateImpl>
    implements _$$EmptyMovieNowPlayingStateImplCopyWith<$Res> {
  __$$EmptyMovieNowPlayingStateImplCopyWithImpl(
      _$EmptyMovieNowPlayingStateImpl _value,
      $Res Function(_$EmptyMovieNowPlayingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyMovieNowPlayingStateImpl implements EmptyMovieNowPlayingState {
  _$EmptyMovieNowPlayingStateImpl();

  @override
  String toString() {
    return 'MovieNowPlayingState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyMovieNowPlayingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ShowDetail> movies) success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ShowDetail> movies)? success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ShowDetail> movies)? success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
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
    required TResult Function(InitialMovieNowPlayingState value) initial,
    required TResult Function(LoadingMovieNowPlayingState value) loading,
    required TResult Function(SuccessMovieNowPlayingState value) success,
    required TResult Function(EmptyMovieNowPlayingState value) empty,
    required TResult Function(FailureMovieNowPlayingState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMovieNowPlayingState value)? initial,
    TResult? Function(LoadingMovieNowPlayingState value)? loading,
    TResult? Function(SuccessMovieNowPlayingState value)? success,
    TResult? Function(EmptyMovieNowPlayingState value)? empty,
    TResult? Function(FailureMovieNowPlayingState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieNowPlayingState value)? initial,
    TResult Function(LoadingMovieNowPlayingState value)? loading,
    TResult Function(SuccessMovieNowPlayingState value)? success,
    TResult Function(EmptyMovieNowPlayingState value)? empty,
    TResult Function(FailureMovieNowPlayingState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyMovieNowPlayingState implements MovieNowPlayingState {
  factory EmptyMovieNowPlayingState() = _$EmptyMovieNowPlayingStateImpl;
}

/// @nodoc
abstract class _$$FailureMovieNowPlayingStateImplCopyWith<$Res> {
  factory _$$FailureMovieNowPlayingStateImplCopyWith(
          _$FailureMovieNowPlayingStateImpl value,
          $Res Function(_$FailureMovieNowPlayingStateImpl) then) =
      __$$FailureMovieNowPlayingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureMovieNowPlayingStateImplCopyWithImpl<$Res>
    extends _$MovieNowPlayingStateCopyWithImpl<$Res,
        _$FailureMovieNowPlayingStateImpl>
    implements _$$FailureMovieNowPlayingStateImplCopyWith<$Res> {
  __$$FailureMovieNowPlayingStateImplCopyWithImpl(
      _$FailureMovieNowPlayingStateImpl _value,
      $Res Function(_$FailureMovieNowPlayingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureMovieNowPlayingStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureMovieNowPlayingStateImpl implements FailureMovieNowPlayingState {
  _$FailureMovieNowPlayingStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieNowPlayingState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureMovieNowPlayingStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureMovieNowPlayingStateImplCopyWith<_$FailureMovieNowPlayingStateImpl>
      get copyWith => __$$FailureMovieNowPlayingStateImplCopyWithImpl<
          _$FailureMovieNowPlayingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ShowDetail> movies) success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ShowDetail> movies)? success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ShowDetail> movies)? success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMovieNowPlayingState value) initial,
    required TResult Function(LoadingMovieNowPlayingState value) loading,
    required TResult Function(SuccessMovieNowPlayingState value) success,
    required TResult Function(EmptyMovieNowPlayingState value) empty,
    required TResult Function(FailureMovieNowPlayingState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMovieNowPlayingState value)? initial,
    TResult? Function(LoadingMovieNowPlayingState value)? loading,
    TResult? Function(SuccessMovieNowPlayingState value)? success,
    TResult? Function(EmptyMovieNowPlayingState value)? empty,
    TResult? Function(FailureMovieNowPlayingState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieNowPlayingState value)? initial,
    TResult Function(LoadingMovieNowPlayingState value)? loading,
    TResult Function(SuccessMovieNowPlayingState value)? success,
    TResult Function(EmptyMovieNowPlayingState value)? empty,
    TResult Function(FailureMovieNowPlayingState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureMovieNowPlayingState implements MovieNowPlayingState {
  factory FailureMovieNowPlayingState(final String message) =
      _$FailureMovieNowPlayingStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureMovieNowPlayingStateImplCopyWith<_$FailureMovieNowPlayingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
