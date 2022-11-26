import 'package:data/data.dart';
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
}
