import 'package:injectable/injectable.dart';
import '../../../../config/env_config.dart';
import 'home_api.dart';
import '../model/home_res_model.dart';
import 'home_data_src.dart';
import 'home_mock_data_src.dart';

@Singleton(as: HomeDataSrc)
class HomeDataSrcImpl implements HomeDataSrc {
  final HomeApi api;
  final HomeMockDataSource mock;
  HomeDataSrcImpl({required this.api, required this.mock});
  @override
  Future<HomeResModel> get() {
    switch (EnvConfig.config.dataSourceMode) {
      case DataSrcMode.api:
        return api.get();
      case DataSrcMode.mock:
        return mock.get();
    }
  }
}
