// gorouter wants us to use
// GoRouter.of(context).namedLocation instead
// of state.namedLocation but that one throws error
// and I dont really have time for this right now
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../global_widgets/error_screen.dart';
import '../ui/screens/home.dart';

typedef GoRouterWidgetBuilder = Widget Function(
  BuildContext context,
  GoRouterState state,
);

class RouteTable {
  RouteTable._();

  static const String
//
      rHome = 'home_screen'
//
      ;

  static const String initialLocation = '/';

  static final _userRoute = GoRoute(
    name: rHome,
    path: '/',
    builder: (context, state) => const HomeScreen(),
    routes: const [],
  );

  static final routerProvider = Provider<GoRouter>(
    (ref) {
      return GoRouter(
        initialLocation: initialLocation,
        routes: [
          _userRoute,
        ],
        errorBuilder: (context, state) => ErrorScreen.routeError(),
      );
    },
  );
}

extension GR on GoRouter {
  /// usage:
  /// ```
  /// GoRouter.of(context).onPop(
  ///   () {
  ///    // do something
  ///  },
  /// );
  ///
  /// GoRouter.of(context).push(...);
  ///
  /// ```
  void onPop(VoidCallback onPop) {
    final loc = location;

    listener() async {
      if (location == loc) {
        onPop();
        removeListener(listener);
      }
    }

    addListener(listener);
  }
}
