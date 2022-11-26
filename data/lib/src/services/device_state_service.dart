import 'dart:convert';
import 'dart:io';

import 'package:data/src/services/base_service.dart';
import 'package:logging/logging.dart';

import '../dtos/device_state_dto.dart';

class DeviceStateService extends BaseService {
  const DeviceStateService({
    required super.logger,
  });

  Future<List<DeviceStateDto>?> _getDeviceStates() async {
    try {
      var input = await File('demo_data/device_states.json').readAsString();
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

  Future<DeviceStateDto?> getDeviceState(String deviceId) async {
    try {
      final deviceStates = await _getDeviceStates();

      if (deviceStates == null) return null;

      final deviceState = deviceStates.firstWhere(
        (element) => element.deviceId == deviceId,
      );

      return deviceState;
    } catch (e) {
      logger.log(Level.SEVERE, 'Error getting device state', e);

      return null;
    }
  }
}
