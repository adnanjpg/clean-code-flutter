// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceDto _$$_DeviceDtoFromJson(Map<String, dynamic> json) => _$_DeviceDto(
      id: json['id'] as String,
      name: json['name'] as String,
      color: $enumDecode(_$DeviceColorEnumMap, json['color']),
      type: $enumDecode(_$DeviceTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_DeviceDtoToJson(_$_DeviceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': _$DeviceColorEnumMap[instance.color]!,
      'type': _$DeviceTypeEnumMap[instance.type]!,
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
