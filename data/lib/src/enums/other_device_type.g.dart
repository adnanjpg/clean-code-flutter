// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_device_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtherDeviceTypeAdapter extends TypeAdapter<OtherDeviceType> {
  @override
  final int typeId = 2;

  @override
  OtherDeviceType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return OtherDeviceType.vaccum;
      case 1:
        return OtherDeviceType.lamp;
      case 2:
        return OtherDeviceType.tv;
      case 3:
        return OtherDeviceType.fridge;
      default:
        return OtherDeviceType.vaccum;
    }
  }

  @override
  void write(BinaryWriter writer, OtherDeviceType obj) {
    switch (obj) {
      case OtherDeviceType.vaccum:
        writer.writeByte(0);
        break;
      case OtherDeviceType.lamp:
        writer.writeByte(1);
        break;
      case OtherDeviceType.tv:
        writer.writeByte(2);
        break;
      case OtherDeviceType.fridge:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtherDeviceTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
