// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_with_state_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceWithStateDto _$DeviceWithStateDtoFromJson(Map<String, dynamic> json) {
  return _DeviceWithStateDto.fromJson(json);
}

/// @nodoc
mixin _$DeviceWithStateDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DeviceColor get color => throw _privateConstructorUsedError;
  OtherDeviceType get type => throw _privateConstructorUsedError;
  DeviceOnOffState get onOffState => throw _privateConstructorUsedError;
  DeviceChargingState get chargingState => throw _privateConstructorUsedError;
  int get batteryLevel => throw _privateConstructorUsedError;
  int get wifiSignal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceWithStateDtoCopyWith<DeviceWithStateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceWithStateDtoCopyWith<$Res> {
  factory $DeviceWithStateDtoCopyWith(
          DeviceWithStateDto value, $Res Function(DeviceWithStateDto) then) =
      _$DeviceWithStateDtoCopyWithImpl<$Res, DeviceWithStateDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      DeviceColor color,
      OtherDeviceType type,
      DeviceOnOffState onOffState,
      DeviceChargingState chargingState,
      int batteryLevel,
      int wifiSignal});
}

/// @nodoc
class _$DeviceWithStateDtoCopyWithImpl<$Res, $Val extends DeviceWithStateDto>
    implements $DeviceWithStateDtoCopyWith<$Res> {
  _$DeviceWithStateDtoCopyWithImpl(this._value, this._then);

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
    Object? onOffState = null,
    Object? chargingState = null,
    Object? batteryLevel = null,
    Object? wifiSignal = null,
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
      onOffState: null == onOffState
          ? _value.onOffState
          : onOffState // ignore: cast_nullable_to_non_nullable
              as DeviceOnOffState,
      chargingState: null == chargingState
          ? _value.chargingState
          : chargingState // ignore: cast_nullable_to_non_nullable
              as DeviceChargingState,
      batteryLevel: null == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      wifiSignal: null == wifiSignal
          ? _value.wifiSignal
          : wifiSignal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceWithStateDtoCopyWith<$Res>
    implements $DeviceWithStateDtoCopyWith<$Res> {
  factory _$$_DeviceWithStateDtoCopyWith(_$_DeviceWithStateDto value,
          $Res Function(_$_DeviceWithStateDto) then) =
      __$$_DeviceWithStateDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DeviceColor color,
      OtherDeviceType type,
      DeviceOnOffState onOffState,
      DeviceChargingState chargingState,
      int batteryLevel,
      int wifiSignal});
}

/// @nodoc
class __$$_DeviceWithStateDtoCopyWithImpl<$Res>
    extends _$DeviceWithStateDtoCopyWithImpl<$Res, _$_DeviceWithStateDto>
    implements _$$_DeviceWithStateDtoCopyWith<$Res> {
  __$$_DeviceWithStateDtoCopyWithImpl(
      _$_DeviceWithStateDto _value, $Res Function(_$_DeviceWithStateDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? type = null,
    Object? onOffState = null,
    Object? chargingState = null,
    Object? batteryLevel = null,
    Object? wifiSignal = null,
  }) {
    return _then(_$_DeviceWithStateDto(
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
      onOffState: null == onOffState
          ? _value.onOffState
          : onOffState // ignore: cast_nullable_to_non_nullable
              as DeviceOnOffState,
      chargingState: null == chargingState
          ? _value.chargingState
          : chargingState // ignore: cast_nullable_to_non_nullable
              as DeviceChargingState,
      batteryLevel: null == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      wifiSignal: null == wifiSignal
          ? _value.wifiSignal
          : wifiSignal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceWithStateDto implements _DeviceWithStateDto {
  const _$_DeviceWithStateDto(
      {required this.id,
      required this.name,
      required this.color,
      required this.type,
      required this.onOffState,
      required this.chargingState,
      required this.batteryLevel,
      required this.wifiSignal});

  factory _$_DeviceWithStateDto.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceWithStateDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DeviceColor color;
  @override
  final OtherDeviceType type;
  @override
  final DeviceOnOffState onOffState;
  @override
  final DeviceChargingState chargingState;
  @override
  final int batteryLevel;
  @override
  final int wifiSignal;

  @override
  String toString() {
    return 'DeviceWithStateDto(id: $id, name: $name, color: $color, type: $type, onOffState: $onOffState, chargingState: $chargingState, batteryLevel: $batteryLevel, wifiSignal: $wifiSignal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceWithStateDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.onOffState, onOffState) ||
                other.onOffState == onOffState) &&
            (identical(other.chargingState, chargingState) ||
                other.chargingState == chargingState) &&
            (identical(other.batteryLevel, batteryLevel) ||
                other.batteryLevel == batteryLevel) &&
            (identical(other.wifiSignal, wifiSignal) ||
                other.wifiSignal == wifiSignal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, type,
      onOffState, chargingState, batteryLevel, wifiSignal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceWithStateDtoCopyWith<_$_DeviceWithStateDto> get copyWith =>
      __$$_DeviceWithStateDtoCopyWithImpl<_$_DeviceWithStateDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceWithStateDtoToJson(
      this,
    );
  }
}

abstract class _DeviceWithStateDto implements DeviceWithStateDto {
  const factory _DeviceWithStateDto(
      {required final String id,
      required final String name,
      required final DeviceColor color,
      required final OtherDeviceType type,
      required final DeviceOnOffState onOffState,
      required final DeviceChargingState chargingState,
      required final int batteryLevel,
      required final int wifiSignal}) = _$_DeviceWithStateDto;

  factory _DeviceWithStateDto.fromJson(Map<String, dynamic> json) =
      _$_DeviceWithStateDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DeviceColor get color;
  @override
  OtherDeviceType get type;
  @override
  DeviceOnOffState get onOffState;
  @override
  DeviceChargingState get chargingState;
  @override
  int get batteryLevel;
  @override
  int get wifiSignal;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceWithStateDtoCopyWith<_$_DeviceWithStateDto> get copyWith =>
      throw _privateConstructorUsedError;
}
