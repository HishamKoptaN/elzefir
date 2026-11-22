import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class VisitorDataSrc {
  VisitorDataSrc(this._firestore);

  final FirebaseFirestore _firestore;

  static const String _statsPath = 'stats/visitors';

  Future<void> recordVisit({
    required String visitorId,
    required bool isFirstVisit,
  }) async {
    final timestamp = FieldValue.serverTimestamp();
    final batch = _firestore.batch();

    batch.set(_firestore.doc(_statsPath), {
      'totalVisits': FieldValue.increment(1),
      if (isFirstVisit) 'uniqueVisitors': FieldValue.increment(1),
      'lastVisitAt': timestamp,
      'daily': {_dayKey: FieldValue.increment(1)},
    }, SetOptions(merge: true));

    batch.set(_firestore.doc('visitors/$visitorId'), {
      if (isFirstVisit) 'firstSeenAt': timestamp,
      'lastSeenAt': timestamp,
      'visits': FieldValue.increment(1),
    }, SetOptions(merge: true));

    await batch.commit();
  }

  String get _dayKey {
    final now = DateTime.now();
    final month = now.month.toString().padLeft(2, '0');
    final day = now.day.toString().padLeft(2, '0');
    return '${now.year}-$month-$day';
  }
}
