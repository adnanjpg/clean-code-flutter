import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_action_dto.g.dart';
part 'device_action_dto.freezed.dart';

@freezed
class DeviceActionDto with _$DeviceActionDto {
  const factory DeviceActionDto({
    required String id,
    required String deviceType,
    required String actionName,
  }) = _DeviceActionDto;

  factory DeviceActionDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceActionDtoFromJson(json);
}
