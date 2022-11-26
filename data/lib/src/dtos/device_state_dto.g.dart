// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_state_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceStateDto _$$_DeviceStateDtoFromJson(Map<String, dynamic> json) =>
    _$_DeviceStateDto(
      deviceId: json['device_id'] as String,
      onOffState: $enumDecode(_$DeviceOnOffStateEnumMap, json['on_off_state']),
      chargingState:
          $enumDecode(_$DeviceChargingStateEnumMap, json['charging_state']),
      batteryLevel: json['battery_level'] as int,
      wifiSignal: json['wifi_signal'] as int,
    );

Map<String, dynamic> _$$_DeviceStateDtoToJson(_$_DeviceStateDto instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'on_off_state': _$DeviceOnOffStateEnumMap[instance.onOffState]!,
      'charging_state': _$DeviceChargingStateEnumMap[instance.chargingState]!,
      'battery_level': instance.batteryLevel,
      'wifi_signal': instance.wifiSignal,
    };

const _$DeviceOnOffStateEnumMap = {
  DeviceOnOffState.off: 0,
  DeviceOnOffState.on: 1,
};

const _$DeviceChargingStateEnumMap = {
  DeviceChargingState.unknown: -1,
  DeviceChargingState.notCharging: 0,
  DeviceChargingState.charging: 1,
};
