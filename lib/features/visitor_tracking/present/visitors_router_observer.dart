import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../../core/analytics/analytics_events.dart';
import '../../../core/analytics/analytics_service.dart';
import '../../../core/analytics/consent_service.dart';
import '../../../core/di/dependency_injection.dart';
import '../domain/visitor_tracker.dart';

@singleton
class VisitorsRouterObserver extends NavigatorObserver {
  bool _visitRecorded = false;
  DateTime? _screenEnteredAt;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route is PageRoute) {
      _screenEnteredAt = DateTime.now();
    }
    unawaited(_handleRoute(route.settings.name));
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final screenName = route.settings.name;
    final enteredAt = _screenEnteredAt;
    if (route is PageRoute) {
      _screenEnteredAt = null;
    }
    if (screenName == null || screenName.isEmpty || enteredAt == null) {
      return;
    }
    final durationSeconds = DateTime.now().difference(enteredAt).inSeconds;
    if (durationSeconds > 0) {
      unawaited(_logScreenEngagement(
        screenName: screenName,
        durationSeconds: durationSeconds,
      ));
    }
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

  Future<void> _logScreenEngagement({
    required String screenName,
    required int durationSeconds,
  }) async {
    try {
      if (!await getIt<ConsentService>().isGranted()) {
        return;
      }
      await getIt<AnalyticsService>().logEvent(
        name: AnalyticsEvents.timeOnScreen,
        parameters: {
          'screen_name': screenName,
          'duration_seconds': durationSeconds,
        },
      );
    } catch (_) {
      // Analytics is best-effort and must never break navigation.
    }
  }
}
