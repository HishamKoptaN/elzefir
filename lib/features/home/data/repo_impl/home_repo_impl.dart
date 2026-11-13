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
  final HomeDataSrc homeDataSrc;
  final FirebaseFirestore firestore;
  HomeRepoImpl(this.homeDataSrc, this.firestore);

  @override
  Future<ApiResult<HomeResEntity>> get() async {
    try {
      final homeRes = await homeDataSrc.get();
      WorkingHoursEntity? workingHours;
      try {
        final doc = await firestore.collection('settings').doc('working_hours').get();
        if (doc.exists && doc.data() != null) {
          final data = doc.data()!;
          final openMinutes = data['openMinutes'] as int? ?? 540;
          final closeMinutes = data['closeMinutes'] as int? ?? 1380;
          final daysDynamic = data['days'] as List<dynamic>? ?? [1, 2, 3, 4, 5, 6, 7];
          final days = daysDynamic.map((e) => (e as num).toInt()).toList();
          workingHours = WorkingHoursEntity(
            openMinutes: openMinutes,
            closeMinutes: closeMinutes,
            days: days,
          );
        }
      } catch (_) {}

      return ApiResult.success(data: homeRes.toEntity().copyWith(workingHours: workingHours));
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }
}
