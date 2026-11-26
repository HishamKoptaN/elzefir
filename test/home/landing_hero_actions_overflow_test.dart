import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/domain/entities/home_res_entity.dart';
import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:elzefir/features/home/domain/entities/working_hours_entity.dart';
import 'package:elzefir/features/home/domain/repo/home_repo.dart';
import 'package:elzefir/features/home/domain/use_cases/home_use_cases.dart';
import 'package:elzefir/features/home/present/widgets/landing/hero/landing_hero_actions.dart';
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

class _Host extends StatelessWidget {
  const _Host();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 180,
        child: LandingHeroActions(
          context: context,
          colors: Theme.of(context).colorScheme,
          onExplore: () {},
        ),
      ),
    );
  }
}

void main() {
  setUp(() {
    getIt.registerSingleton<HomeUseCases>(
      HomeUseCases(homeRepo: _FakeHomeRepo()),
    );
  });
  tearDown(() async => getIt.reset());

  testWidgets('hero actions scale down in a narrow column', (tester) async {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          theme: AppTheme.theme(context),
          home: const Scaffold(body: _Host()),
        ),
      ),
    );
    await tester.pump();

    expect(
      find.descendant(
        of: find.byType(OutlinedButton),
        matching: find.byWidgetPredicate(
          (widget) => widget is FittedBox && widget.fit == BoxFit.scaleDown,
        ),
      ),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });
}
