import 'dart:convert';

import 'package:data/src/services/base_service.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

import '../dtos/device_dto.dart';
export '../dtos/device_dto.dart';

class DeviceService extends BaseService {
  final String languageCode;
  const DeviceService({
    required this.languageCode,
    required super.logger,
  });

  Future<List<DeviceDto>?> getDevices() async {
    try {
      var input = await rootBundle.loadString(
        getCorrectPath('devices.json'),
      );
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
}
