// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_action_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceActionDto _$$_DeviceActionDtoFromJson(Map<String, dynamic> json) =>
    _$_DeviceActionDto(
      id: json['id'] as String,
      deviceType: json['device_type'] as String,
      actionName: json['action_name'] as String,
    );

Map<String, dynamic> _$$_DeviceActionDtoToJson(_$_DeviceActionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_type': instance.deviceType,
      'action_name': instance.actionName,
    };
