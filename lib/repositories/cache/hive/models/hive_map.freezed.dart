// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hive_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HiveMap _$HiveMapFromJson(Map<String, dynamic> json) {
  return _HiveMap.fromJson(json);
}

/// @nodoc
mixin _$HiveMap {
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HiveMapCopyWith<HiveMap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveMapCopyWith<$Res> {
  factory $HiveMapCopyWith(HiveMap value, $Res Function(HiveMap) then) =
      _$HiveMapCopyWithImpl<$Res, HiveMap>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class _$HiveMapCopyWithImpl<$Res, $Val extends HiveMap>
    implements $HiveMapCopyWith<$Res> {
  _$HiveMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HiveMapImplCopyWith<$Res> implements $HiveMapCopyWith<$Res> {
  factory _$$HiveMapImplCopyWith(
          _$HiveMapImpl value, $Res Function(_$HiveMapImpl) then) =
      __$$HiveMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$HiveMapImplCopyWithImpl<$Res>
    extends _$HiveMapCopyWithImpl<$Res, _$HiveMapImpl>
    implements _$$HiveMapImplCopyWith<$Res> {
  __$$HiveMapImplCopyWithImpl(
      _$HiveMapImpl _value, $Res Function(_$HiveMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HiveMapImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(anyMap: true, checked: true)
class _$HiveMapImpl implements _HiveMap {
  _$HiveMapImpl({required this.data});

  factory _$HiveMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$HiveMapImplFromJson(json);

  @override
  final Map<String, dynamic> data;

  @override
  String toString() {
    return 'HiveMap(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HiveMapImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HiveMapImplCopyWith<_$HiveMapImpl> get copyWith =>
      __$$HiveMapImplCopyWithImpl<_$HiveMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HiveMapImplToJson(
      this,
    );
  }
}

abstract class _HiveMap implements HiveMap {
  factory _HiveMap({required final Map<String, dynamic> data}) = _$HiveMapImpl;

  factory _HiveMap.fromJson(Map<String, dynamic> json) = _$HiveMapImpl.fromJson;

  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$HiveMapImplCopyWith<_$HiveMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
