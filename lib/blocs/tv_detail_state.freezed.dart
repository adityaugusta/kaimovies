// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TvDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Tv tv, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Tv tv, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Tv tv, List<Review> reviews)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingTvDetailState value) loading,
    required TResult Function(SuccessTvDetailState value) success,
    required TResult Function(EmptyTvDetailState value) empty,
    required TResult Function(ErrorTvDetailState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTvDetailState value)? loading,
    TResult? Function(SuccessTvDetailState value)? success,
    TResult? Function(EmptyTvDetailState value)? empty,
    TResult? Function(ErrorTvDetailState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTvDetailState value)? loading,
    TResult Function(SuccessTvDetailState value)? success,
    TResult Function(EmptyTvDetailState value)? empty,
    TResult Function(ErrorTvDetailState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvDetailStateCopyWith<$Res> {
  factory $TvDetailStateCopyWith(
          TvDetailState value, $Res Function(TvDetailState) then) =
      _$TvDetailStateCopyWithImpl<$Res, TvDetailState>;
}

/// @nodoc
class _$TvDetailStateCopyWithImpl<$Res, $Val extends TvDetailState>
    implements $TvDetailStateCopyWith<$Res> {
  _$TvDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingTvDetailStateCopyWith<$Res> {
  factory _$$LoadingTvDetailStateCopyWith(_$LoadingTvDetailState value,
          $Res Function(_$LoadingTvDetailState) then) =
      __$$LoadingTvDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingTvDetailStateCopyWithImpl<$Res>
    extends _$TvDetailStateCopyWithImpl<$Res, _$LoadingTvDetailState>
    implements _$$LoadingTvDetailStateCopyWith<$Res> {
  __$$LoadingTvDetailStateCopyWithImpl(_$LoadingTvDetailState _value,
      $Res Function(_$LoadingTvDetailState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingTvDetailState implements LoadingTvDetailState {
  _$LoadingTvDetailState();

  @override
  String toString() {
    return 'TvDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingTvDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Tv tv, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Tv tv, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Tv tv, List<Review> reviews)? success,
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
    required TResult Function(LoadingTvDetailState value) loading,
    required TResult Function(SuccessTvDetailState value) success,
    required TResult Function(EmptyTvDetailState value) empty,
    required TResult Function(ErrorTvDetailState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTvDetailState value)? loading,
    TResult? Function(SuccessTvDetailState value)? success,
    TResult? Function(EmptyTvDetailState value)? empty,
    TResult? Function(ErrorTvDetailState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTvDetailState value)? loading,
    TResult Function(SuccessTvDetailState value)? success,
    TResult Function(EmptyTvDetailState value)? empty,
    TResult Function(ErrorTvDetailState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingTvDetailState implements TvDetailState {
  factory LoadingTvDetailState() = _$LoadingTvDetailState;
}

/// @nodoc
abstract class _$$SuccessTvDetailStateCopyWith<$Res> {
  factory _$$SuccessTvDetailStateCopyWith(_$SuccessTvDetailState value,
          $Res Function(_$SuccessTvDetailState) then) =
      __$$SuccessTvDetailStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Tv tv, List<Review> reviews});

  $TvCopyWith<$Res> get tv;
}

/// @nodoc
class __$$SuccessTvDetailStateCopyWithImpl<$Res>
    extends _$TvDetailStateCopyWithImpl<$Res, _$SuccessTvDetailState>
    implements _$$SuccessTvDetailStateCopyWith<$Res> {
  __$$SuccessTvDetailStateCopyWithImpl(_$SuccessTvDetailState _value,
      $Res Function(_$SuccessTvDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tv = null,
    Object? reviews = null,
  }) {
    return _then(_$SuccessTvDetailState(
      null == tv
          ? _value.tv
          : tv // ignore: cast_nullable_to_non_nullable
              as Tv,
      null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TvCopyWith<$Res> get tv {
    return $TvCopyWith<$Res>(_value.tv, (value) {
      return _then(_value.copyWith(tv: value));
    });
  }
}

/// @nodoc

class _$SuccessTvDetailState implements SuccessTvDetailState {
  _$SuccessTvDetailState(this.tv, this.reviews);

  @override
  final Tv tv;
  @override
  final List<Review> reviews;

  @override
  String toString() {
    return 'TvDetailState.success(tv: $tv, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessTvDetailState &&
            (identical(other.tv, tv) || other.tv == tv) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tv, const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessTvDetailStateCopyWith<_$SuccessTvDetailState> get copyWith =>
      __$$SuccessTvDetailStateCopyWithImpl<_$SuccessTvDetailState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Tv tv, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return success(tv, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Tv tv, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return success?.call(tv, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Tv tv, List<Review> reviews)? success,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tv, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingTvDetailState value) loading,
    required TResult Function(SuccessTvDetailState value) success,
    required TResult Function(EmptyTvDetailState value) empty,
    required TResult Function(ErrorTvDetailState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTvDetailState value)? loading,
    TResult? Function(SuccessTvDetailState value)? success,
    TResult? Function(EmptyTvDetailState value)? empty,
    TResult? Function(ErrorTvDetailState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTvDetailState value)? loading,
    TResult Function(SuccessTvDetailState value)? success,
    TResult Function(EmptyTvDetailState value)? empty,
    TResult Function(ErrorTvDetailState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessTvDetailState implements TvDetailState {
  factory SuccessTvDetailState(final Tv tv, final List<Review> reviews) =
      _$SuccessTvDetailState;

  Tv get tv;
  List<Review> get reviews;
  @JsonKey(ignore: true)
  _$$SuccessTvDetailStateCopyWith<_$SuccessTvDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyTvDetailStateCopyWith<$Res> {
  factory _$$EmptyTvDetailStateCopyWith(_$EmptyTvDetailState value,
          $Res Function(_$EmptyTvDetailState) then) =
      __$$EmptyTvDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyTvDetailStateCopyWithImpl<$Res>
    extends _$TvDetailStateCopyWithImpl<$Res, _$EmptyTvDetailState>
    implements _$$EmptyTvDetailStateCopyWith<$Res> {
  __$$EmptyTvDetailStateCopyWithImpl(
      _$EmptyTvDetailState _value, $Res Function(_$EmptyTvDetailState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyTvDetailState implements EmptyTvDetailState {
  _$EmptyTvDetailState();

  @override
  String toString() {
    return 'TvDetailState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyTvDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Tv tv, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Tv tv, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Tv tv, List<Review> reviews)? success,
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
    required TResult Function(LoadingTvDetailState value) loading,
    required TResult Function(SuccessTvDetailState value) success,
    required TResult Function(EmptyTvDetailState value) empty,
    required TResult Function(ErrorTvDetailState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTvDetailState value)? loading,
    TResult? Function(SuccessTvDetailState value)? success,
    TResult? Function(EmptyTvDetailState value)? empty,
    TResult? Function(ErrorTvDetailState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTvDetailState value)? loading,
    TResult Function(SuccessTvDetailState value)? success,
    TResult Function(EmptyTvDetailState value)? empty,
    TResult Function(ErrorTvDetailState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyTvDetailState implements TvDetailState {
  factory EmptyTvDetailState() = _$EmptyTvDetailState;
}

/// @nodoc
abstract class _$$ErrorTvDetailStateCopyWith<$Res> {
  factory _$$ErrorTvDetailStateCopyWith(_$ErrorTvDetailState value,
          $Res Function(_$ErrorTvDetailState) then) =
      __$$ErrorTvDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorTvDetailStateCopyWithImpl<$Res>
    extends _$TvDetailStateCopyWithImpl<$Res, _$ErrorTvDetailState>
    implements _$$ErrorTvDetailStateCopyWith<$Res> {
  __$$ErrorTvDetailStateCopyWithImpl(
      _$ErrorTvDetailState _value, $Res Function(_$ErrorTvDetailState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorTvDetailState implements ErrorTvDetailState {
  _$ErrorTvDetailState();

  @override
  String toString() {
    return 'TvDetailState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorTvDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Tv tv, List<Review> reviews) success,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Tv tv, List<Review> reviews)? success,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Tv tv, List<Review> reviews)? success,
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
    required TResult Function(LoadingTvDetailState value) loading,
    required TResult Function(SuccessTvDetailState value) success,
    required TResult Function(EmptyTvDetailState value) empty,
    required TResult Function(ErrorTvDetailState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTvDetailState value)? loading,
    TResult? Function(SuccessTvDetailState value)? success,
    TResult? Function(EmptyTvDetailState value)? empty,
    TResult? Function(ErrorTvDetailState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTvDetailState value)? loading,
    TResult Function(SuccessTvDetailState value)? success,
    TResult Function(EmptyTvDetailState value)? empty,
    TResult Function(ErrorTvDetailState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorTvDetailState implements TvDetailState {
  factory ErrorTvDetailState() = _$ErrorTvDetailState;
}
