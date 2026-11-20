import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/blocs/auth_bloc/auth_bloc.dart';
import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/visitor_tracking/present/visitors_router_observer.dart';
import '../globals/global_variable.dart';
import '../di/dependency_injection.dart';
import 'config/route_config.dart';
import 'error_page.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((_) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

class GoRouterRefreshListenable extends ChangeNotifier {
  final List<Listenable> _listeners;

  GoRouterRefreshListenable(this._listeners) {
    for (final listener in _listeners) {
      listener.addListener(notifyListeners);
    }
  }

  @override
  void dispose() {
    for (final listener in _listeners) {
      listener.removeListener(notifyListeners);
    }
    super.dispose();
  }
}

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    refreshListenable: GoRouterRefreshListenable([
      GoRouterRefreshStream(getIt<AuthBloc>().stream),
    ]),
    navigatorKey: GlobalVariable.navState,
    observers: [getIt<VisitorsRouterObserver>()],
    debugLogDiagnostics: true,
    routes: RouteConfig.routes,
    redirect: (context, state) {
      final loc = state.matchedLocation;
      if (loc == '/${AuthView.routeName}' || loc == '/ads') {
        return '/';
      }
      return null;
    },
    errorBuilder: (context, state) {
      return ErrorPageBuilder.build(context, message: state.error?.toString());
    },
  );
}
