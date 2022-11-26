import 'package:data/src/enums/device_charging_state.dart';
import 'package:data/src/enums/device_on_off_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_state_dto.g.dart';
part 'device_state_dto.freezed.dart';

@freezed
class DeviceStateDto with _$DeviceStateDto {
  const factory DeviceStateDto({
    required String deviceId,
    required DeviceOnOffState onOffState,
    required DeviceChargingState chargingState,
    required int batteryLevel,
    required int wifiSignal,
  }) = _DeviceStateDto;

  factory DeviceStateDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceStateDtoFromJson(json);
}
