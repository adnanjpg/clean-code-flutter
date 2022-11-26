import 'package:domain/src/prov/services_prov.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/data.dart';

import '../ref_cubit.dart';

part 'devices_list_bloc.freezed.dart';

@freezed
class DevicesListBlocState with _$DevicesListBlocState {
  const factory DevicesListBlocState.initial() = _Initial;
  const factory DevicesListBlocState.loading() = _Loading;
  const factory DevicesListBlocState.loaded(List<DeviceDto> devices) = _Loaded;
  const factory DevicesListBlocState.error(String message) = _Error;
}

class DevicesListBlocCubit extends RefCubit<DevicesListBlocState> {
  DevicesListBlocCubit(Ref ref)
      : super(ref, const DevicesListBlocState.initial()) {
    loadDevices();
  }

  void loadDevices() async {
    emit(const DevicesListBlocState.loading());
    try {
      final devices = await ref.read(deviceServiceProv).getDevices();

      if (devices == null) {
        emit(const DevicesListBlocState.error('No devices found'));
        return;
      }

      emit(DevicesListBlocState.loaded(devices));
    } catch (e) {
      emit(DevicesListBlocState.error(e.toString()));
    }
  }
}
