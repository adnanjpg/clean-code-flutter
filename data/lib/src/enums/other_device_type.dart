import 'package:hive/hive.dart';

part 'other_device_type.g.dart';

@HiveType(typeId: 2)
enum OtherDeviceType {
  @HiveField(0)
  vaccum,
  @HiveField(1)
  lamp,
  @HiveField(2)
  tv,
  @HiveField(3)
  fridge,
}
