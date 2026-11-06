import 'package:injectable/injectable.dart';

import '../../../../config/env_config.dart';
import 'home_api.dart';
import '../model/home_res_model.dart';
import 'home_data_src.dart';

@Singleton(as: HomeDataSrc)
class HomeDataSrcImpl implements HomeDataSrc {
  final HomeApi api;
  HomeDataSrcImpl({required this.api});
  @override
  Future<HomeResModel> get() {
    return api.get();
  }
}
