import 'package:data/data.dart';
import 'package:domain/src/prov/logger_prov.dart';
import 'package:domain/src/prov/services_prov.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ref_cubit.dart';

part 'routines_list_bloc.freezed.dart';

@freezed
class RoutinesListBlocState with _$RoutinesListBlocState {
  const factory RoutinesListBlocState.initial() = _Initial;
  const factory RoutinesListBlocState.loading() = _Loading;
  const factory RoutinesListBlocState.loaded(List<RoutineDto> routines) =
      _Loaded;
  const factory RoutinesListBlocState.error(String message) = _Error;
}

class RoutinesListBlocCubit extends RefCubit<RoutinesListBlocState> {
  RoutinesListBlocCubit(Ref ref)
      : super(ref, const RoutinesListBlocState.initial()) {
    loadRoutines();
  }

  void loadRoutines() async {
    emit(const RoutinesListBlocState.loading());
    try {
      final routines = await ref.read(routinesProv).getRoutines();
      emit(RoutinesListBlocState.loaded(routines));
    } catch (e) {
      emit(RoutinesListBlocState.error(e.toString()));
    }
  }

  Future<bool> addRoutine(RoutineDto routine) async {
    if (state is! _Loaded) {
      ref
          .read(domainLoggerProv)
          .shout('Tried to add a routine when not loaded');
      return false;
    }

    final success = await ref.read(routinesProv).addRoutine(routine);

    if (!success) {
      return false;
    }

    final routines = (state as _Loaded).routines;
    final newRoutines = [...routines, routine];
    emit(RoutinesListBlocState.loaded(newRoutines));
    return true;
  }

  Future<bool> updateRoutine(RoutineDto routine) async {
    if (state is! _Loaded) {
      ref
          .read(domainLoggerProv)
          .shout('Tried to update a routine when not loaded');
      return false;
    }

    final success = await ref.read(routinesProv).updateRoutine(routine);

    if (!success) {
      return false;
    }

    final routines = (state as _Loaded).routines;
    final newRoutines = routines
        .map(
          (r) => r.id == routine.id ? routine : r,
        )
        .toList();
    emit(RoutinesListBlocState.loaded(newRoutines));
    return true;
  }

  Future<bool> deleteRoutine(RoutineDto routine) async {
    if (state is! _Loaded) {
      ref
          .read(domainLoggerProv)
          .shout('Tried to toggle device enabled when not loaded');
      return false;
    }

    final success = await ref.read(routinesProv).deleteRoutine(routine);

    if (!success) {
      return false;
    }

    final routines = (state as _Loaded).routines;
    final newRoutines = routines.where((r) => r.id != routine.id).toList();
    emit(RoutinesListBlocState.loaded(newRoutines));
    return true;
  }
}

extension RoutineEntity on RoutineDto {
  String get actionsStr {
    return actions
        .map(
          (e) => e.actionName,
        )
        .join(', ');
  }
}
