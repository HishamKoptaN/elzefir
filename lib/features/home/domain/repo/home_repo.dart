import '../../../../../../core/networking/api_result.dart';
import '../entities/home_res_entity.dart';
import '../entities/working_hours_entity.dart';

abstract class HomeRepo {
  Future<ApiResult<HomeResEntity>> get();

  /// حالة فتح/غلق المحل من مستند فايرستور، تتحدث مباشرة عند تعديله.
  Stream<WorkingHoursEntity?> watchWorkingHours();
}
