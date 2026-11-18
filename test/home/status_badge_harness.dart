import 'dart:async';

import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/domain/entities/working_hours_entity.dart';
import 'package:elzefir/features/home/domain/repo/home_repo.dart';
import 'package:elzefir/features/home/domain/use_cases/home_use_cases.dart';
import 'package:elzefir/features/home/present/widgets/home_app_bar/home_status_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

export 'package:elzefir/features/home/domain/entities/working_hours_entity.dart';

const orderNotice =
    'يمكنك إرسال طلبك الآن، وسنبدأ تجهيزه وتسليمه خلال ساعات عمل المطعم.';
const openHours = WorkingHoursEntity(
  openMinutes: 0,
  closeMinutes: 1439,
  days: [1, 2, 3, 4, 5, 6, 7],
);

WorkingHoursEntity closedHours({bool? override}) {
  return WorkingHoursEntity(
    openMinutes: 630,
    closeMinutes: 1320,
    days: [DateTime.now().weekday % 7 + 1],
    isOpenOverride: override,
  );
}

class _HoursRepo extends Fake implements HomeRepo {
  _HoursRepo(this.controller);
  final StreamController<WorkingHoursEntity?> controller;

  @override
  Stream<WorkingHoursEntity?> watchWorkingHours() {
    return controller.stream;
  }
}

Future<StreamController<WorkingHoursEntity?>> mountBadge(
  WidgetTester tester, {
  double width = 390,
  double textScale = 1,
}) async {
  final controller = StreamController<WorkingHoursEntity?>();
  getIt.registerSingleton<HomeUseCases>(
    HomeUseCases(homeRepo: _HoursRepo(controller)),
  );
  addTearDown(() async {
    await getIt.unregister<HomeUseCases>();
    await controller.close();
  });
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = Size(width, 900);
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
  await tester.pumpWidget(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.theme(context),
          home: Directionality(
            textDirection: .rtl,
            child: MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: .linear(textScale)),
              child: Scaffold(
                body: SingleChildScrollView(
                  padding: .symmetric(horizontal: 12.w),
                  child: const HomeStatusBadge(),
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
  return controller;
}

Future<void> emitHours(
  WidgetTester tester,
  StreamController<WorkingHoursEntity?> controller,
  WorkingHoursEntity? hours,
) async {
  controller.add(hours);
  await tester.pump();
  await tester.pump();
}
