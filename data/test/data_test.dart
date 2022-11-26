import 'package:data/src/services/base_service.dart';
import 'package:data/src/services/device_state_service.dart';
import 'package:data/src/services/device_service.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BaseService.setForTesting();
  final languageCode = 'en-US';
  final logger = Logger('data');

  group(
    'Devices service',
    () {
      final deviceService = DeviceService(
        languageCode: languageCode,
        logger: logger,
      );

      test(
        'Get devces list',
        () async {
          final devices = await deviceService.getDevices();

          expect(devices, isNotNull);
        },
      );
    },
  );
  group(
    'Device states service',
    () {
      final deviceStateService = DeviceStateService(
        logger: logger,
      );

      test(
        'Get device states list',
        () async {
          final deviceStates = await deviceStateService.getDeviceState('1');

          expect(deviceStates, isNotNull);
        },
      );
    },
  );
}
