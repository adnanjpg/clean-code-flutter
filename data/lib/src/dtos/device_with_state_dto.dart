import 'package:data/src/enums/device_color.dart';
import 'package:data/src/enums/device_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/device_charging_state.dart';
import '../enums/device_on_off_state.dart';

part 'device_with_state_dto.g.dart';
part 'device_with_state_dto.freezed.dart';

@freezed
class DeviceWithStateDto with _$DeviceWithStateDto {
  const factory DeviceWithStateDto({
    required String id,
    required String name,
    required DeviceColor color,
    required DeviceType type,
    required DeviceOnOffState onOffState,
    required DeviceChargingState chargingState,
    required int batteryLevel,
    required int wifiSignal,
  }) = _DeviceWithStateDto;

  factory DeviceWithStateDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceWithStateDtoFromJson(json);
}
