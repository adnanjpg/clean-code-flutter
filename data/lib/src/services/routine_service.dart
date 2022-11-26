import '../dtos/routine_dto.dart';
import 'package:data/src/services/base_service.dart';
import 'package:hive/hive.dart';
import 'package:logging/logging.dart';

export '../dtos/routine_dto.dart';

class RoutineService extends BaseLocalService {
  const RoutineService({
    required super.localDataProvider,
    required super.logger,
  });

  Box<RoutineDto>? get _routineBox => localDataProvider.boxOf<RoutineDto>();

  List<RoutineDto>? get _routines {
    final vals = _routineBox?.values.toList();
    return vals;
  }

  Future<bool> addRoutine(RoutineDto routine) async {
    try {
      await _routineBox?.put(routine.id, routine);
      return true;
    } catch (e) {
      logger.log(Level.SEVERE, 'Error adding routine', e);
      return false;
    }
  }

  Future<bool> updateRoutine(RoutineDto routine) async {
    try {
      await _routineBox?.put(routine.id, routine);
      return true;
    } catch (e) {
      logger.log(Level.SEVERE, 'Error updating routine', e);
      return false;
    }
  }

  Future<bool> deleteRoutine(RoutineDto routine) async {
    try {
      await _routineBox?.delete(routine.id);
      return true;
    } catch (e) {
      logger.log(Level.SEVERE, 'Error deleting routine', e);
      return false;
    }
  }

  Future<List<RoutineDto>> getRoutines() async {
    try {
      return _routines ?? [];
    } catch (e) {
      logger.log(Level.SEVERE, 'Error getting routines', e);
      return [];
    }
  }
}
