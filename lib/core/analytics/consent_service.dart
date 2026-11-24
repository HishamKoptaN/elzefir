import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ads_consent_bridge.dart';
import '../globals/database/shared_pref_helper.dart';
import '../globals/database/shared_pref_keys.dart';

abstract interface class ConsentDecision {
  Future<bool> isDecided();
  Future<void> grant();
  Future<void> deny();
}

/// يضبط موافقة التحليلات قبل أي تتبع، ويحفظ قرار الزائر محليًا.
@singleton
class ConsentService implements ConsentDecision {
  ConsentService(this._analytics);

  final FirebaseAnalytics _analytics;

  Future<bool> isGranted() {
    return SharedPrefHelper.getBool(key: SharedPrefKeys.analyticsConsent);
  }

  @override
  Future<bool> isDecided() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(SharedPrefKeys.analyticsConsent);
  }

  Future<void> applyStoredConsent() async {
    await _apply(await isGranted());
  }

  @override
  Future<void> grant() async {
    await SharedPrefHelper.setData(
      key: SharedPrefKeys.analyticsConsent,
      value: true,
    );
    await _apply(true);
  }

  @override
  Future<void> deny() async {
    await SharedPrefHelper.setData(
      key: SharedPrefKeys.analyticsConsent,
      value: false,
    );
    await _apply(false);
  }

  Future<void> _apply(bool granted) async {
    await _analytics.setConsent(
      analyticsStorageConsentGranted: granted,
      adStorageConsentGranted: false,
      adUserDataConsentGranted: false,
      adPersonalizationSignalsConsentGranted: false,
    );
    await _analytics.setAnalyticsCollectionEnabled(granted);
    syncAdsConsent(granted);
  }
}
