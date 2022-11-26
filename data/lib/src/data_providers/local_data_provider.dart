import 'package:data/data.dart';
import 'package:data/src/dtos/device_action_dto.dart';
import 'package:data/src/dtos/routine_dto.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:logging/logging.dart';

import 'base_data_provider.dart';

class LocalDataProvider extends BaseDataProvider {
  LocalDataProvider(super.logger);

  Future<void> create() async {
    await Hive.initFlutter();
    await _init();
  }

  @visibleForTesting
  Future<void> onlyInit() async {
    await _init();
  }

  void _registerAdapter<T>(TypeAdapter<T> adapter) {
    if (!Hive.isAdapterRegistered(adapter.typeId)) {
      Hive.registerAdapter(adapter);
    }
  }

  Future<void> _init() async {
    // we cannot loop this because hive
    // has a problem with generics..

    _registerAdapter(OtherDeviceTypeAdapter());
    _registerAdapter(DeviceActionDtoAdapter());
    _registerAdapter(RoutineDtoAdapter());

    _routineBox = await Hive.openBox<RoutineDto>('routinesBox');
  }

  late Box<RoutineDto> _routineBox;

  Box<T>? boxOf<T>() {
    switch (T) {
      case RoutineDto:
        return _routineBox as Box<T>;
      default:
        logger.log(
          Level.SEVERE,
          'Box not found for type $T',
        );
        return null;
    }
  }
}
