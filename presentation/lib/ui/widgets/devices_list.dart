import 'package:flutter/material.dart';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/global_widgets/error_widget.dart';
import 'package:presentation/global_widgets/loading_widget.dart';
import 'package:presentation/utils/utils.dart';

final _devListBlocProv = Provider.autoDispose(DevicesListBlocCubit.new);

class DevicesList extends ConsumerWidget {
  const DevicesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocProvider(
      create: (_) => ref.watch(_devListBlocProv),
      child: const _DevicesListBody(),
    );
  }
}

class _DevicesListBody extends StatelessWidget {
  const _DevicesListBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getStr('home:devices_list'),
          style: Theme.of(context).textTheme.headline3,
        ),
        Container(
          height: 130,
          margin: defPaddingVertical,
          child: BlocBuilder<DevicesListBlocCubit, DevicesListBlocState>(
            builder: (context, state) {
              return state.when(
                initial: SizedBox.new,
                loading: LoadingWidget.new,
                error: ErrWidget.error,
                loaded: (devices) => ListView.builder(
                  itemCount: devices.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final device = devices[index];
                    return SizedBox(
                      width: 200,
                      child: Card(
                        color: device.bgColor,
                        child: ListTile(
                          title: Text(device.name),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(device.batteryIcon),
                                  Icon(device.wifiIcon),
                                ],
                              ),
                              Switch.adaptive(
                                value: device.onOffState.isOn,
                                onChanged: (_) {
                                  context
                                      .read<DevicesListBlocCubit>()
                                      .toggleDeviceEnabled(device.id);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
