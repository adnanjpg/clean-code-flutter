import 'package:data/data.dart';
import 'package:domain/src/prov/logger_prov.dart';
import 'package:domain/src/prov/services_prov.dart';
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
    String? name,
    List<DeviceActionDto>? actions,
  }) = _CreateRoutineFormState;
}

class CreateRoutineFormCubit extends RefCubit<CreateRoutineFormState> {
  CreateRoutineFormCubit(Ref ref) : super(ref, CreateRoutineFormState());

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
    var created = await ref.read(routinesProv).addRoutine(routine);

    // TODO: find a way to update the routines list
    // this solution does not work, as RoutinesListBlocCubit
    // is not above the widgets that call this method.

    // if (!created) {
    //   return false;
    // }

    // created = context.read<RoutinesListBlocCubit>().addRoutine(routine);

    // return created;

    return created;
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
