import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../repo/home_repo.dart';
import '../entities/home_res_entity.dart';
import '../entities/working_hours_entity.dart';

@singleton
class HomeUseCases {
  final HomeRepo homeRepo;
  HomeUseCases({required this.homeRepo});
  Future<ApiResult<HomeResEntity>> get() async {
    return await homeRepo.get();
  }

  /// متابعة حالة فتح/غلق المحل من فايرستور بشكل مباشر.
  Stream<WorkingHoursEntity?> watchWorkingHours() {
    return homeRepo.watchWorkingHours();
  }
}
