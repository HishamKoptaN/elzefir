abstract interface class VisitorRepository {
  Future<void> recordVisit({
    required String visitorId,
    required bool isFirstVisit,
  });
}
