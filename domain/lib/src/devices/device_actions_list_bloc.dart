import 'package:data/data.dart';
import 'package:domain/src/prov/services_prov.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ref_cubit.dart';

part 'device_actions_list_bloc.freezed.dart';

@freezed
class DeviceActionsListBlocState with _$DeviceActionsListBlocState {
  const factory DeviceActionsListBlocState.initial() = _Initial;
  const factory DeviceActionsListBlocState.loading() = _Loading;
  const factory DeviceActionsListBlocState.loaded(
      List<DeviceActionDto> actions) = _Loaded;
  const factory DeviceActionsListBlocState.error(String message) = _Error;
}

class DeviceActionsListBlocCubit extends RefCubit<DeviceActionsListBlocState> {
  DeviceActionsListBlocCubit(Ref ref)
      : super(ref, const DeviceActionsListBlocState.initial()) {
    loadActions();
  }

  void loadActions() async {
    emit(const DeviceActionsListBlocState.loading());
    try {
      final actions = await ref.read(deviceActionsProv).getDeviceActions();

      if (actions == null) {
        emit(const DeviceActionsListBlocState.error('No actions found'));
        return;
      }

      emit(DeviceActionsListBlocState.loaded(actions));
    } catch (e) {
      emit(DeviceActionsListBlocState.error(e.toString()));
    }
  }
}
