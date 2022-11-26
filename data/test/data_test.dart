import 'package:data/data.dart';
import 'package:data/src/services/base_service.dart';
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
      final deviceService = DeviceWithStateService(
        languageCode: languageCode,
        logger: logger,
      );

      test(
        'Get devices with states list',
        () async {
          final devicesWState = await deviceService.getDevicesWithState();

          expect(devicesWState, isNotNull);
        },
      );
    },
  );
  group(
    'Device actions service',
    () {
      final deviceService = DeviceActionService(
        languageCode: languageCode,
        logger: logger,
      );

      test(
        'Get device actions list',
        () async {
          final devicesWState = await deviceService.getDeviceActions();

          expect(devicesWState, isNotNull);
        },
      );
    },
  );
}
