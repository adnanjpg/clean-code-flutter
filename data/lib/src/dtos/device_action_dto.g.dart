// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_action_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceActionDtoAdapter extends TypeAdapter<DeviceActionDto> {
  @override
  final int typeId = 1;

  @override
  DeviceActionDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceActionDto(
      id: fields[0] as String,
      deviceType: fields[1] as OtherDeviceType,
      actionName: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DeviceActionDto obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.deviceType)
      ..writeByte(2)
      ..write(obj.actionName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceActionDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceActionDto _$$_DeviceActionDtoFromJson(Map<String, dynamic> json) =>
    _$_DeviceActionDto(
      id: json['id'] as String,
      deviceType: $enumDecode(_$OtherDeviceTypeEnumMap, json['device_type']),
      actionName: json['action_name'] as String,
    );

Map<String, dynamic> _$$_DeviceActionDtoToJson(_$_DeviceActionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_type': _$OtherDeviceTypeEnumMap[instance.deviceType]!,
      'action_name': instance.actionName,
    };

const _$OtherDeviceTypeEnumMap = {
  OtherDeviceType.vaccum: 'vaccum',
  OtherDeviceType.lamp: 'lamp',
  OtherDeviceType.tv: 'tv',
  OtherDeviceType.fridge: 'fridge',
};
