import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/error_handler.dart';
import '../data_sources/home_data_src.dart';
import '../mapper/home_mapper.dart';
import '../../domain/repo/home_repo.dart';
import '../../domain/entities/home_res_entity.dart';
import '../../domain/entities/working_hours_entity.dart';

@Singleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  static const String _settingsCollection = 'settings';
  static const String _workingHoursDoc = 'working_hours';

  final HomeDataSrc homeDataSrc;
  final FirebaseFirestore firestore;
  HomeRepoImpl(this.homeDataSrc, this.firestore);

  @override
  Future<ApiResult<HomeResEntity>> get() async {
    try {
      final homeRes = await homeDataSrc.get();
      WorkingHoursEntity? workingHours;
      try {
        final doc = await firestore
            .collection(_settingsCollection)
            .doc(_workingHoursDoc)
            .get();
        final data = doc.data();
        if (doc.exists && data != null) {
          workingHours = WorkingHoursEntity.fromFirestore(data);
        }
      } catch (_) {}

      return ApiResult.success(
        data: homeRes.toEntity().copyWith(workingHours: workingHours),
      );
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }

  @override
  Stream<WorkingHoursEntity?> watchWorkingHours() {
    return firestore
        .collection(_settingsCollection)
        .doc(_workingHoursDoc)
        .snapshots()
        .map((doc) {
          final data = doc.data();
          if (!doc.exists || data == null) {
            return null;
          }
          return WorkingHoursEntity.fromFirestore(data);
        });
  }
}
