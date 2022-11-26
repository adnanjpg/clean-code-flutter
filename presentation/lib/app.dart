import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'global_widgets/loading_screen.dart';
import 'utils/app_init.dart';
import 'utils/route_table.dart';
import 'utils/utils.dart';

class TheApp extends StatelessWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: _App(),
    );
  }
}

class _LocalizationWrapper extends StatelessWidget {
  final Widget child;
  const _LocalizationWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      saveLocale: true,
      path: 'assets/translations',
      supportedLocales: appLangs.map((e) => e.toLocale()).toList(),
      child: child,
    );
  }
}

class _App extends ConsumerWidget {
  const _App();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(appInitializerProv).init();

    if (!ref.watch(appInitedProv)) {
      return const MaterialApp(
        home: LoadingScreen(),
      );
    }

    final router = ref.watch(RouteTable.routerProvider);

    return _LocalizationWrapper(
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            debugShowMaterialGrid: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: appLangs[0].toLocale(),
            debugShowCheckedModeBanner: false,
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
            scaffoldMessengerKey:
                ref.watch(appStateKeysProv).scaffoldMessengerKey,
          );
        },
      ),
    );
  }
}
