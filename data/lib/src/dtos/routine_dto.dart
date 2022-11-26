import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'device_action_dto.dart';

part 'routine_dto.g.dart';
part 'routine_dto.freezed.dart';

@freezed
@HiveType(typeId: 0)
class RoutineDto extends HiveObject with _$RoutineDto {
  factory RoutineDto({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required List<DeviceActionDto> actions,
  }) = _RoutineDto;

  RoutineDto._();

  factory RoutineDto.fromJson(Map<String, dynamic> json) =>
      _$RoutineDtoFromJson(json);
}
