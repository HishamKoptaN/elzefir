import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';

abstract interface class AnalyticsService {
  Future<void> logScreenView({required String screenName});

  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  });
}

@Singleton(as: AnalyticsService)
class FirebaseAnalyticsService implements AnalyticsService {
  final FirebaseAnalytics analytics;

  FirebaseAnalyticsService(this.analytics);

  @override
  Future<void> logScreenView({required String screenName}) {
    return analytics.logScreenView(screenName: screenName);
  }

  @override
  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) {
    return analytics.logEvent(name: name, parameters: parameters);
  }
}

// abstract class AnalyticsService {
//   Future<void> viewProduct({required ProductEntity product});
//   Future<void> clickWhatsapp();
//   Future<void> clickCall();
//   Future<void> clickMaps();
//   Future<void> viewCategory({required String category});
// }
