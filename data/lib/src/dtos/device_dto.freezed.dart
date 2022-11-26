// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceDto _$DeviceDtoFromJson(Map<String, dynamic> json) {
  return _DeviceDto.fromJson(json);
}

/// @nodoc
mixin _$DeviceDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DeviceColor get color => throw _privateConstructorUsedError;
  OtherDeviceType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDtoCopyWith<DeviceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDtoCopyWith<$Res> {
  factory $DeviceDtoCopyWith(DeviceDto value, $Res Function(DeviceDto) then) =
      _$DeviceDtoCopyWithImpl<$Res, DeviceDto>;
  @useResult
  $Res call({String id, String name, DeviceColor color, OtherDeviceType type});
}

/// @nodoc
class _$DeviceDtoCopyWithImpl<$Res, $Val extends DeviceDto>
    implements $DeviceDtoCopyWith<$Res> {
  _$DeviceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as DeviceColor,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OtherDeviceType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceDtoCopyWith<$Res> implements $DeviceDtoCopyWith<$Res> {
  factory _$$_DeviceDtoCopyWith(
          _$_DeviceDto value, $Res Function(_$_DeviceDto) then) =
      __$$_DeviceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, DeviceColor color, OtherDeviceType type});
}

/// @nodoc
class __$$_DeviceDtoCopyWithImpl<$Res>
    extends _$DeviceDtoCopyWithImpl<$Res, _$_DeviceDto>
    implements _$$_DeviceDtoCopyWith<$Res> {
  __$$_DeviceDtoCopyWithImpl(
      _$_DeviceDto _value, $Res Function(_$_DeviceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? type = null,
  }) {
    return _then(_$_DeviceDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as DeviceColor,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OtherDeviceType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceDto implements _DeviceDto {
  const _$_DeviceDto(
      {required this.id,
      required this.name,
      required this.color,
      required this.type});

  factory _$_DeviceDto.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DeviceColor color;
  @override
  final OtherDeviceType type;

  @override
  String toString() {
    return 'DeviceDto(id: $id, name: $name, color: $color, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceDtoCopyWith<_$_DeviceDto> get copyWith =>
      __$$_DeviceDtoCopyWithImpl<_$_DeviceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceDtoToJson(
      this,
    );
  }
}

abstract class _DeviceDto implements DeviceDto {
  const factory _DeviceDto(
      {required final String id,
      required final String name,
      required final DeviceColor color,
      required final OtherDeviceType type}) = _$_DeviceDto;

  factory _DeviceDto.fromJson(Map<String, dynamic> json) =
      _$_DeviceDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DeviceColor get color;
  @override
  OtherDeviceType get type;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceDtoCopyWith<_$_DeviceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
