// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_control.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CacheControl _$CacheControlFromJson(Map<String, dynamic> json) {
  return _CacheControl.fromJson(json);
}

/// @nodoc
mixin _$CacheControl {
  String get label => throw _privateConstructorUsedError;
  DateTime get lastRequest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CacheControlCopyWith<CacheControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheControlCopyWith<$Res> {
  factory $CacheControlCopyWith(
          CacheControl value, $Res Function(CacheControl) then) =
      _$CacheControlCopyWithImpl<$Res, CacheControl>;
  @useResult
  $Res call({String label, DateTime lastRequest});
}

/// @nodoc
class _$CacheControlCopyWithImpl<$Res, $Val extends CacheControl>
    implements $CacheControlCopyWith<$Res> {
  _$CacheControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? lastRequest = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      lastRequest: null == lastRequest
          ? _value.lastRequest
          : lastRequest // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CacheControlImplCopyWith<$Res>
    implements $CacheControlCopyWith<$Res> {
  factory _$$CacheControlImplCopyWith(
          _$CacheControlImpl value, $Res Function(_$CacheControlImpl) then) =
      __$$CacheControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, DateTime lastRequest});
}

/// @nodoc
class __$$CacheControlImplCopyWithImpl<$Res>
    extends _$CacheControlCopyWithImpl<$Res, _$CacheControlImpl>
    implements _$$CacheControlImplCopyWith<$Res> {
  __$$CacheControlImplCopyWithImpl(
      _$CacheControlImpl _value, $Res Function(_$CacheControlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? lastRequest = null,
  }) {
    return _then(_$CacheControlImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      lastRequest: null == lastRequest
          ? _value.lastRequest
          : lastRequest // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CacheControlImpl implements _CacheControl {
  const _$CacheControlImpl({required this.label, required this.lastRequest});

  factory _$CacheControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$CacheControlImplFromJson(json);

  @override
  final String label;
  @override
  final DateTime lastRequest;

  @override
  String toString() {
    return 'CacheControl(label: $label, lastRequest: $lastRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheControlImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.lastRequest, lastRequest) ||
                other.lastRequest == lastRequest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, lastRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheControlImplCopyWith<_$CacheControlImpl> get copyWith =>
      __$$CacheControlImplCopyWithImpl<_$CacheControlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheControlImplToJson(
      this,
    );
  }
}

abstract class _CacheControl implements CacheControl {
  const factory _CacheControl(
      {required final String label,
      required final DateTime lastRequest}) = _$CacheControlImpl;

  factory _CacheControl.fromJson(Map<String, dynamic> json) =
      _$CacheControlImpl.fromJson;

  @override
  String get label;
  @override
  DateTime get lastRequest;
  @override
  @JsonKey(ignore: true)
  _$$CacheControlImplCopyWith<_$CacheControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
