// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_state_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceStateDto _$DeviceStateDtoFromJson(Map<String, dynamic> json) {
  return _DeviceStateDto.fromJson(json);
}

/// @nodoc
mixin _$DeviceStateDto {
  String get deviceId => throw _privateConstructorUsedError;
  DeviceOnOffState get onOffState => throw _privateConstructorUsedError;
  DeviceChargingState get chargingState => throw _privateConstructorUsedError;
  int get batteryLevel => throw _privateConstructorUsedError;
  int get wifiSignal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStateDtoCopyWith<DeviceStateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStateDtoCopyWith<$Res> {
  factory $DeviceStateDtoCopyWith(
          DeviceStateDto value, $Res Function(DeviceStateDto) then) =
      _$DeviceStateDtoCopyWithImpl<$Res, DeviceStateDto>;
  @useResult
  $Res call(
      {String deviceId,
      DeviceOnOffState onOffState,
      DeviceChargingState chargingState,
      int batteryLevel,
      int wifiSignal});
}

/// @nodoc
class _$DeviceStateDtoCopyWithImpl<$Res, $Val extends DeviceStateDto>
    implements $DeviceStateDtoCopyWith<$Res> {
  _$DeviceStateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? onOffState = null,
    Object? chargingState = null,
    Object? batteryLevel = null,
    Object? wifiSignal = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_DeviceStateDtoCopyWith<$Res>
    implements $DeviceStateDtoCopyWith<$Res> {
  factory _$$_DeviceStateDtoCopyWith(
          _$_DeviceStateDto value, $Res Function(_$_DeviceStateDto) then) =
      __$$_DeviceStateDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      DeviceOnOffState onOffState,
      DeviceChargingState chargingState,
      int batteryLevel,
      int wifiSignal});
}

/// @nodoc
class __$$_DeviceStateDtoCopyWithImpl<$Res>
    extends _$DeviceStateDtoCopyWithImpl<$Res, _$_DeviceStateDto>
    implements _$$_DeviceStateDtoCopyWith<$Res> {
  __$$_DeviceStateDtoCopyWithImpl(
      _$_DeviceStateDto _value, $Res Function(_$_DeviceStateDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? onOffState = null,
    Object? chargingState = null,
    Object? batteryLevel = null,
    Object? wifiSignal = null,
  }) {
    return _then(_$_DeviceStateDto(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_DeviceStateDto implements _DeviceStateDto {
  const _$_DeviceStateDto(
      {required this.deviceId,
      required this.onOffState,
      required this.chargingState,
      required this.batteryLevel,
      required this.wifiSignal});

  factory _$_DeviceStateDto.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStateDtoFromJson(json);

  @override
  final String deviceId;
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
    return 'DeviceStateDto(deviceId: $deviceId, onOffState: $onOffState, chargingState: $chargingState, batteryLevel: $batteryLevel, wifiSignal: $wifiSignal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStateDto &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
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
  int get hashCode => Object.hash(runtimeType, deviceId, onOffState,
      chargingState, batteryLevel, wifiSignal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStateDtoCopyWith<_$_DeviceStateDto> get copyWith =>
      __$$_DeviceStateDtoCopyWithImpl<_$_DeviceStateDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStateDtoToJson(
      this,
    );
  }
}

abstract class _DeviceStateDto implements DeviceStateDto {
  const factory _DeviceStateDto(
      {required final String deviceId,
      required final DeviceOnOffState onOffState,
      required final DeviceChargingState chargingState,
      required final int batteryLevel,
      required final int wifiSignal}) = _$_DeviceStateDto;

  factory _DeviceStateDto.fromJson(Map<String, dynamic> json) =
      _$_DeviceStateDto.fromJson;

  @override
  String get deviceId;
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
  _$$_DeviceStateDtoCopyWith<_$_DeviceStateDto> get copyWith =>
      throw _privateConstructorUsedError;
}
