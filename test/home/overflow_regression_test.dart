import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/domain/entities/home_res_entity.dart';
import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:elzefir/features/home/domain/entities/working_hours_entity.dart';
import 'package:elzefir/features/home/domain/repo/home_repo.dart';
import 'package:elzefir/features/home/domain/use_cases/home_use_cases.dart';
import 'package:elzefir/features/home/present/widgets/about/about.dart';
import 'package:elzefir/features/home/present/widgets/footer/contacts_items.dart';
import 'package:elzefir/features/home/present/widgets/footer/footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeHomeRepo implements HomeRepo {
  @override
  Future<ApiResult<HomeResEntity>> get() async =>
      ApiResult.success(data: HomeResEntity());

  @override
  Stream<WorkingHoursEntity?> watchWorkingHours() => Stream.value(null);

  @override
  Stream<RestaurantInfoEntity> watchRestaurantInfo() =>
      Stream.value(RestaurantInfoEntity.fallback);
}

Widget _harness(Widget child) {
  return ScreenUtilInit(
    designSize: const Size(360, 690),
    minTextAdapt: true,
    builder: (context, _) => MaterialApp(
      theme: AppTheme.theme(context),
      home: Scaffold(body: SingleChildScrollView(child: child)),
    ),
  );
}

void main() {
  setUp(() {
    getIt.registerSingleton<HomeUseCases>(
      HomeUseCases(homeRepo: _FakeHomeRepo()),
    );
  });
  tearDown(() async => getIt.reset());

  Future<void> setViewport(WidgetTester tester, Size size) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  testWidgets('about section grows instead of overflowing', (tester) async {
    await setViewport(tester, const Size(900, 700));
    await tester.pumpWidget(_harness(const AboutSection()));
    await tester.pump();

    expect(find.byType(AboutSection), findsOneWidget);
    expect(
      find.descendant(
        of: find.byType(AboutSection),
        matching: find.byWidgetPredicate(
          (widget) =>
              widget is ConstrainedBox && widget.constraints.minHeight > 0,
        ),
      ),
      findsWidgets,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('footer contacts scale inside a narrow column', (tester) async {
    await setViewport(tester, const Size(400, 800));
    await tester.pumpWidget(
      _harness(
        Center(child: SizedBox(width: 200, child: FooterContactsItems())),
      ),
    );
    await tester.pump();

    expect(
      find.descendant(
        of: find.byType(FooterContactsItems),
        matching: find.byWidgetPredicate(
          (widget) => widget is FittedBox && widget.fit == BoxFit.scaleDown,
        ),
      ),
      findsWidgets,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('working-hours badge scales inside a narrow column', (
    tester,
  ) async {
    await setViewport(tester, const Size(400, 800));
    await tester.pumpWidget(
      _harness(Center(child: SizedBox(width: 200, child: WorkTimeWidget()))),
    );
    await tester.pump();

    expect(
      find.descendant(
        of: find.byType(WorkTimeWidget),
        matching: find.byWidgetPredicate(
          (widget) => widget is FittedBox && widget.fit == BoxFit.scaleDown,
        ),
      ),
      findsWidgets,
    );
    expect(tester.takeException(), isNull);
  });
}
