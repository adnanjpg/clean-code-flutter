import 'package:domain/src/prov/services_prov.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/data.dart';

import '../ref_cubit.dart';

part 'devices_list_bloc.freezed.dart';

@freezed
class DevicesListBlocState with _$DevicesListBlocState {
  const factory DevicesListBlocState.initial() = _Initial;
  const factory DevicesListBlocState.loading() = _Loading;
  const factory DevicesListBlocState.loaded(List<DeviceWithStateDto> devices) =
      _Loaded;
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
      final devices =
          await ref.read(deviceWithStateServiceProv).getDevicesWithState();

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

extension DevWithStateEntity on DeviceWithStateDto {
  String get batteryLevelStr => '$batteryLevel%';

  IconData get batteryIcon {
    if (batteryLevel > 80) return Icons.battery_full;
    if (batteryLevel > 60) return Icons.battery_6_bar;
    if (batteryLevel > 40) return Icons.battery_4_bar;
    if (batteryLevel > 20) return Icons.battery_2_bar;
    return Icons.battery_alert;
  }
}
