import 'dart:convert';

import 'package:data/src/dtos/device_action_dto.dart';
import 'package:data/src/services/base_service.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

export '../dtos/device_action_dto.dart';

class DeviceActionService extends BaseRemoteService {
  final String languageCode;
  const DeviceActionService({
    required this.languageCode,
    required super.logger,
    required super.remoteDataProvider,
  });

  String get _actionsFilePath => getCorrectPath('device_actions.json');

  Future<List<DeviceActionDto>?> getDeviceActions() async {
    try {
      var input = await rootBundle.loadString(_actionsFilePath);
      var data = jsonDecode(input) as List?;

      if (data == null) return null;

      final deviceActions = data
          .map(
            (e) => DeviceActionDto.fromJson(e as Map<String, dynamic>),
          )
          .toList();

      return deviceActions;
    } catch (e) {
      logger.log(Level.SEVERE, 'Error getting device states', e);

      return null;
    }
  }
}
