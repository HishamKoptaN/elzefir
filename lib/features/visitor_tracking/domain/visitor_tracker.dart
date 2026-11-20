import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../core/globals/database/shared_pref_helper.dart';
import '../../../core/globals/database/shared_pref_keys.dart';
import 'visitor_repository.dart';

@singleton
class VisitorTracker {
  VisitorTracker(this._repository);

  final VisitorRepository _repository;

  Future<void> track() async {
    final visitorId = await _loadVisitorId();
    final visitNumber = await _nextVisitNumber();
    final isFirstVisit = visitNumber == 1;
    await _repository.recordVisit(
      visitorId: visitorId,
      isFirstVisit: isFirstVisit,
      visitNumber: visitNumber,
    );
  }

  Future<String> _loadVisitorId() async {
    final savedId = await SharedPrefHelper.getString(
      key: SharedPrefKeys.visitorId,
    );
    if (savedId != null && savedId.isNotEmpty) {
      return savedId;
    }
    final suffix = Random().nextInt(1 << 30);
    final newId = 'v-${DateTime.now().microsecondsSinceEpoch}-$suffix';
    await SharedPrefHelper.setData(key: SharedPrefKeys.visitorId, value: newId);
    return newId;
  }

  /// يزيد العداد المحلي لكل تتبع ويُرجع رقم الزيارة (1 = أول زيارة).
  Future<int> _nextVisitNumber() async {
    final visits = await SharedPrefHelper.getInt(
      key: SharedPrefKeys.visitorVisitCount,
    );
    final visitNumber = (visits ?? 0) + 1;
    await SharedPrefHelper.setData(
      key: SharedPrefKeys.visitorVisitCount,
      value: visitNumber,
    );
    return visitNumber;
  }
}
