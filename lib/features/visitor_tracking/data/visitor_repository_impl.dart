import 'package:injectable/injectable.dart';

import '../../../../core/analytics/analytics_events.dart';
import '../../../../core/analytics/analytics_service.dart';
import '../domain/visitor_repository.dart';
import 'visitor_data_src.dart';

@Singleton(as: VisitorRepository)
class VisitorRepositoryImpl implements VisitorRepository {
  VisitorRepositoryImpl(this._dataSrc, this._analytics);

  final VisitorDataSrc _dataSrc;
  final AnalyticsService _analytics;

  @override
  Future<void> recordVisit({
    required String visitorId,
    required bool isFirstVisit,
    int visitNumber = 1,
  }) async {
    await _dataSrc.recordVisit(
      visitorId: visitorId,
      isFirstVisit: isFirstVisit,
    );
    await _analytics.logEvent(
      name: isFirstVisit ? AnalyticsEvents.firstVisit : AnalyticsEvents.returningVisit,
      parameters: {'visit_number': visitNumber},
    );
  }
}
