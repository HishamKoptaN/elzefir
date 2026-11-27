import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/domain/entities/home_res_entity.dart';
import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:elzefir/features/home/domain/entities/working_hours_entity.dart';
import 'package:elzefir/features/home/domain/repo/home_repo.dart';
import 'package:elzefir/features/home/domain/use_cases/home_use_cases.dart';
import 'package:elzefir/features/home/present/widgets/orders/orders_teaser_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

class _Repo implements HomeRepo {
  @override
  Future<ApiResult<HomeResEntity>> get() async =>
      ApiResult.success(data: HomeResEntity());

  @override
  Stream<WorkingHoursEntity?> watchWorkingHours() => const Stream.empty();

  @override
  Stream<RestaurantInfoEntity> watchRestaurantInfo() => Stream.value(
    RestaurantInfoEntity.fromFirestore({'orders_teaser_title': 'اطلب السمك'}),
  );
}

void main() {
  tearDown(() async => getIt.reset());

  testWidgets('orders teaser shows the dashboard title and coming badge', (
    tester,
  ) async {
    getIt.registerSingleton<HomeUseCases>(HomeUseCases(homeRepo: _Repo()));
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          theme: AppTheme.theme(context),
          home: const Scaffold(body: OrdersTeaserSection()),
        ),
      ),
    );
    await tester.pump();

    expect(find.text('اطلب السمك'), findsOneWidget);
    expect(find.text('قريباً'), findsOneWidget);
  });
}
