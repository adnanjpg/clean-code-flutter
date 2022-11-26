// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoutineDtoAdapter extends TypeAdapter<RoutineDto> {
  @override
  final int typeId = 0;

  @override
  RoutineDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoutineDto(
      id: fields[0] as String,
      name: fields[1] as String,
      actions: (fields[2] as List).cast<DeviceActionDto>(),
    );
  }

  @override
  void write(BinaryWriter writer, RoutineDto obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.actions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoutineDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoutineDto _$$_RoutineDtoFromJson(Map<String, dynamic> json) =>
    _$_RoutineDto(
      id: json['id'] as String,
      name: json['name'] as String,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => DeviceActionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoutineDtoToJson(_$_RoutineDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'actions': instance.actions,
    };
