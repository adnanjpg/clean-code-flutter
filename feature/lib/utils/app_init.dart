import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appInitializerProv = Provider(AppInitializer.new);

final appInitedProv = StateProvider<bool>(
  (ref) => false,
);

class AppInitializer {
  final Ref ref;

  bool _inited = false;
  bool _initing = false;

  AppInitializer(this.ref);

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    if (_inited || _initing) {
      return;
    }

    await EasyLocalization.ensureInitialized();

    _initing = true;

    _initing = false;
    _inited = true;
    ref.read(appInitedProv.notifier).update((_) => true);
  }
}

final refreshListenableProvider = Provider(
  (ref) => Listenable.merge(
    [
      ValueNotifier(ref.watch(appInitedProv)),
      ValueNotifier(ref.watch(appStateKeysProv)),
    ],
  ),
);

class AppStateKey {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const AppStateKey({
    required this.scaffoldMessengerKey,
  });
}

final appStateKeysProv = StateProvider(
  (ref) {
    return AppStateKey(
      scaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
    );
  },
);
