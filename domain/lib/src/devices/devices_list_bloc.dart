import 'package:domain/src/prov/logger_prov.dart';
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

  void toggleDeviceEnabled(String deviceId) async {
    if (state is! _Loaded) {
      ref
          .read(domainLoggerProv)
          .log(Level.SHOUT, 'Tried to toggle device enabled when not loaded');
      return;
    }

    final oldDevs = (state as _Loaded).devices;
    emit(const DevicesListBlocState.loading());
    try {
      final devs = oldDevs.map(
        (e) {
          if (e.id == deviceId) {
            return e.copyWith(onOffState: e.onOffState.inverse);
          } else {
            return e;
          }
        },
      ).toList();

      emit(DevicesListBlocState.loaded(devs));
    } catch (e) {
      emit(DevicesListBlocState.error(e.toString()));
    }
  }
}

extension DevWithStateEntity on DeviceWithStateDto {
  String get batteryLevelStr => '$batteryLevel%';

  Color get bgColor {
    if (onOffState.isOff) {
      return Colors.grey;
    }

    return color.uiColor;
  }

  IconData get batteryIcon {
    if (chargingState.isCharging) return Icons.battery_charging_full;

    if (batteryLevel > 80) return Icons.battery_full;
    if (batteryLevel > 60) return Icons.battery_6_bar;
    if (batteryLevel > 40) return Icons.battery_4_bar;
    if (batteryLevel > 20) return Icons.battery_2_bar;
    return Icons.battery_alert;
  }

  String get wifiLevelStr => '$wifiSignal%';

  IconData get wifiIcon {
    if (wifiSignal > 80) return Icons.wifi;
    if (wifiSignal > 40) return Icons.wifi_2_bar;
    return Icons.wifi_1_bar;
  }
}

extension DevColor on DeviceColor {
  Color get uiColor {
    switch (this) {
      case DeviceColor.red:
        return Colors.red;
      case DeviceColor.green:
        return Colors.green;
      case DeviceColor.blue:
        return Colors.blue;
      case DeviceColor.yellow:
        return Colors.yellow;
    }
  }
}

extension OnOff on DeviceOnOffState {
  bool get isOn => this == DeviceOnOffState.on;
  bool get isOff => this == DeviceOnOffState.off;

  DeviceOnOffState get inverse {
    switch (this) {
      case DeviceOnOffState.on:
        return DeviceOnOffState.off;
      case DeviceOnOffState.off:
        return DeviceOnOffState.on;
    }
  }
}

extension Charge on DeviceChargingState {
  bool get isCharging => this == DeviceChargingState.charging;
  bool get isNotCharging => this == DeviceChargingState.notCharging;
}
