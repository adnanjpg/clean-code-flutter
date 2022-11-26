import 'package:data/src/enums/device_color.dart';
import 'package:data/src/enums/device_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_dto.g.dart';
part 'device_dto.freezed.dart';

@freezed
class DeviceDto with _$DeviceDto {
  const factory DeviceDto({
    required String id,
    required String name,
    required DeviceColor color,
    required DeviceType type,
  }) = _DeviceDto;

  factory DeviceDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceDtoFromJson(json);
}
