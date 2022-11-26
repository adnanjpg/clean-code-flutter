import 'package:json_annotation/json_annotation.dart';

enum DeviceChargingState {
  @JsonValue(-1)
  unknown,
  @JsonValue(0)
  notCharging,
  @JsonValue(1)
  charging,
}
