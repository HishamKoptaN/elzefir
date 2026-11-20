import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../../core/analytics/analytics_service.dart';
import '../../../core/analytics/consent_service.dart';
import '../../../core/di/dependency_injection.dart';
import '../domain/visitor_tracker.dart';

@singleton
class VisitorsRouterObserver extends NavigatorObserver {
  bool _visitRecorded = false;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    unawaited(_handleRoute(route.settings.name));
  }

  Future<void> _handleRoute(String? name) async {
    if (name == null || name.isEmpty) {
      return;
    }
    try {
      if (!await getIt<ConsentService>().isGranted()) {
        return;
      }
    } catch (_) {
      return;
    }
    try {
      await getIt<AnalyticsService>().logScreenView(screenName: name);
    } catch (_) {
      // Analytics is best-effort and must never break navigation.
    }
    if (_visitRecorded) {
      return;
    }
    _visitRecorded = true;
    try {
      await getIt<VisitorTracker>().track();
    } catch (_) {
      // Visit tracking is best-effort and must never break navigation.
    }
  }
}
