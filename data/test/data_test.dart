import 'package:data/data.dart';
import 'package:data/src/dtos/device_action_dto.dart';
import 'package:data/src/dtos/routine_dto.dart';
import 'package:data/src/services/base_service.dart';
import 'package:data/src/services/routine_service.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_test/hive_test.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';
import 'package:collection/collection.dart';

void main() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
  });

  WidgetsFlutterBinding.ensureInitialized();
  BaseService.setForTesting();

  final languageCode = 'en-US';
  final logger = Logger('data test');

  final localDataProvider = LocalDataProvider(logger);
  final remoteDataProvider = RemoteDataProvider(logger);

  setUp(
    () async {
      await setUpTestHive();

      await localDataProvider.onlyInit();
    },
  );

  tearDown(() async {
    await tearDownTestHive();
  });

  group(
    'Devices service',
    () {
      final deviceService = DeviceWithStateService(
        languageCode: languageCode,
        logger: logger,
        remoteDataProvider: remoteDataProvider,
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
        remoteDataProvider: remoteDataProvider,
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

  group(
    'routines service',
    () {
      final routineService = RoutineService(
        localDataProvider: localDataProvider,
        logger: logger,
      );

      test(
        'Get routines list',
        () async {
          final routines = await routineService.getRoutines();

          expect(routines, []);

          final routine = RoutineDto(
            id: '1',
            name: 'test',
            actions: [
              DeviceActionDto(
                id: '1',
                actionName: 'test',
                deviceType: OtherDeviceType.lamp,
              ),
            ],
          );

          await routineService.addRoutine(routine);

          final routines2 = await routineService.getRoutines();

          expect(const ListEquality().equals(routines2, [routine]), isTrue);
        },
      );
    },
  );
}
