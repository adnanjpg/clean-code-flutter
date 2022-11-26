import 'dart:convert';
import 'dart:io';

import 'package:data/src/services/base_service.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

import '../dtos/device_dto.dart';
import '../dtos/device_state_dto.dart';
import '../dtos/device_with_state_dto.dart';
export '../dtos/device_with_state_dto.dart';

class DeviceWithStateService extends BaseService {
  final String languageCode;
  const DeviceWithStateService({
    required this.languageCode,
    required super.logger,
  });

  String get devicesFilePath => getCorrectPath('devices.json');
  String get deviceStatesFilePath => getCorrectPath('device_states.json');

  Future<List<DeviceStateDto>?> _getDeviceStates() async {
    try {
      var input = await rootBundle.loadString(deviceStatesFilePath);
      var data = jsonDecode(input) as List?;

      if (data == null) return null;

      final deviceStates = data
          .map(
            (e) => DeviceStateDto.fromJson(e as Map<String, dynamic>),
          )
          .toList();

      return deviceStates;
    } catch (e) {
      logger.log(Level.SEVERE, 'Error getting device states', e);

      return null;
    }
  }

  Future<List<DeviceDto>?> _getDevices() async {
    try {
      var input = await rootBundle.loadString(devicesFilePath);
      var map = jsonDecode(input) as Map?;

      if (map == null) return null;

      final data = map[languageCode] as List?;

      if (data == null) return null;

      final devices = data
          .map(
            (e) => DeviceDto.fromJson(e as Map<String, dynamic>),
          )
          .toList();

      return devices;
    } catch (e) {
      logger.log(Level.SEVERE, 'Error getting devices', e);

      return null;
    }
  }

  Future<List<DeviceWithStateDto>?> getDevicesWithState() async {
    try {
      final deviceStates = await _getDeviceStates();
      final devices = await _getDevices();

      final deviceStatesMap = deviceStates == null
          ? null
          : Map.fromEntries(
              deviceStates.map(
                (e) => MapEntry(e.deviceId, e),
              ),
            );

      if (deviceStates == null || devices == null) return null;

      final devicesWithState = devices
          .where(
        (element) => deviceStatesMap?.containsKey(element.id) == true,
      )
          .map(
        (device) {
          final state = deviceStatesMap![device.id]!;

          return DeviceWithStateDto(
            id: device.id,
            name: device.name,
            color: device.color,
            type: device.type,
            batteryLevel: state.batteryLevel,
            onOffState: state.onOffState,
            chargingState: state.chargingState,
            wifiSignal: state.wifiSignal,
          );
        },
      ).toList();

      return devicesWithState;
    } catch (e) {
      logger.log(Level.SEVERE, 'Error getting devices with state', e);

      return null;
    }
  }
}
