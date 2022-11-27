import 'package:data/data.dart';
import 'package:domain/src/prov/logger_prov.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain.dart';
import '../ref_cubit.dart';

part 'create_routine_form_bloc.freezed.dart';

@freezed
class CreateRoutineFormState with _$CreateRoutineFormState {
  factory CreateRoutineFormState({
    String? id,
    String? name,
    List<DeviceActionDto>? actions,
  }) = _CreateRoutineFormState;

  factory CreateRoutineFormState.fromRoutine(RoutineDto routine) =>
      CreateRoutineFormState(
        id: routine.id,
        name: routine.name,
        actions: routine.actions,
      );
}

class CreateRoutineFormCubit extends RefCubit<CreateRoutineFormState> {
  CreateRoutineFormCubit(Ref ref) : super(ref, CreateRoutineFormState());

  void apply(CreateRoutineFormState state) {
    emit(state);
  }

  Future<bool> createOrUpdateRoutine(BuildContext context) async {
    if (state.id == null) {
      return createRoutine(context);
    } else {
      return updateRoutine(context);
    }
  }

  Future<bool> createRoutine(BuildContext context) async {
    if (state.name == null || state.actions == null) {
      ref.read(domainLoggerProv).severe('Invalid state');
      return false;
    }

    final routine = RoutineDto(
      id: Uuid().v4(),
      name: state.name!,
      actions: state.actions!,
    );

    final created =
        await context.read<RoutinesListBlocCubit>().addRoutine(routine);

    return created;
  }

  Future<bool> updateRoutine(BuildContext context) async {
    if (state.id == null || state.name == null || state.actions == null) {
      ref.read(domainLoggerProv).severe('Invalid state');
      return false;
    }

    final routine = RoutineDto(
      id: state.id!,
      name: state.name!,
      actions: state.actions!,
    );

    final updated =
        await context.read<RoutinesListBlocCubit>().updateRoutine(routine);

    return updated;
  }

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void setActions(List<DeviceActionDto> actions) {
    emit(state.copyWith(actions: actions));
  }

  void addAction(DeviceActionDto action) {
    emit(
      state.copyWith(
        actions: [
          if (state.actions != null) ...state.actions!,
          action,
        ],
      ),
    );
  }

  void removeAction(DeviceActionDto action) {
    emit(
      state.copyWith(
        actions: state.actions == null
            ? null
            : state.actions!
                .where(
                  (element) => element != action,
                )
                .toList(),
      ),
    );
  }
}
