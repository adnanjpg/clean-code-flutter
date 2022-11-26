import 'package:json_annotation/json_annotation.dart';

enum DeviceOnOffState {
  @JsonValue(0)
  off,
  @JsonValue(1)
  on,
}
