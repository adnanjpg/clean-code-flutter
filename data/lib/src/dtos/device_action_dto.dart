import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'device_action_dto.g.dart';
part 'device_action_dto.freezed.dart';

@freezed
@HiveType(typeId: 1)
class DeviceActionDto extends HiveObject with _$DeviceActionDto {
  factory DeviceActionDto({
    @HiveField(0) required String id,
    @HiveField(1) required OtherDeviceType deviceType,
    @HiveField(2) required String actionName,
  }) = _DeviceActionDto;

  DeviceActionDto._();

  factory DeviceActionDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceActionDtoFromJson(json);
}
