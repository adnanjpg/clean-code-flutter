// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_with_state_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceWithStateDto _$$_DeviceWithStateDtoFromJson(
        Map<String, dynamic> json) =>
    _$_DeviceWithStateDto(
      id: json['id'] as String,
      name: json['name'] as String,
      color: $enumDecode(_$DeviceColorEnumMap, json['color']),
      type: $enumDecode(_$DeviceTypeEnumMap, json['type']),
      onOffState: $enumDecode(_$DeviceOnOffStateEnumMap, json['on_off_state']),
      chargingState:
          $enumDecode(_$DeviceChargingStateEnumMap, json['charging_state']),
      batteryLevel: json['battery_level'] as int,
      wifiSignal: json['wifi_signal'] as int,
    );

Map<String, dynamic> _$$_DeviceWithStateDtoToJson(
        _$_DeviceWithStateDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': _$DeviceColorEnumMap[instance.color]!,
      'type': _$DeviceTypeEnumMap[instance.type]!,
      'on_off_state': _$DeviceOnOffStateEnumMap[instance.onOffState]!,
      'charging_state': _$DeviceChargingStateEnumMap[instance.chargingState]!,
      'battery_level': instance.batteryLevel,
      'wifi_signal': instance.wifiSignal,
    };

const _$DeviceColorEnumMap = {
  DeviceColor.red: 'red',
  DeviceColor.blue: 'blue',
  DeviceColor.green: 'green',
  DeviceColor.yellow: 'yellow',
};

const _$DeviceTypeEnumMap = {
  DeviceType.vaccum: 'vaccum',
  DeviceType.lamp: 'lamp',
  DeviceType.tv: 'tv',
  DeviceType.fridge: 'fridge',
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
