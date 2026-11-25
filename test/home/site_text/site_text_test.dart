import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/errors/models/error_info.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/features/home/domain/entities/home_res_entity.dart';
import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:elzefir/features/home/domain/entities/working_hours_entity.dart';
import 'package:elzefir/features/home/domain/repo/home_repo.dart';
import 'package:elzefir/features/home/domain/use_cases/home_use_cases.dart';
import 'package:elzefir/features/home/present/widgets/site_text/site_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class _Repo implements HomeRepo {
  const _Repo(this.data);
  final Map<String, dynamic> data;

  @override
  Future<ApiResult<HomeResEntity>> get() async =>
      ApiResult.failure(errorInfo: const ErrorInfo(message: 'unused'));

  @override
  Stream<WorkingHoursEntity?> watchWorkingHours() => const Stream.empty();

  @override
  Stream<RestaurantInfoEntity> watchRestaurantInfo() async* {
    yield RestaurantInfoEntity.fromFirestore(data);
  }
}

void main() {
  tearDown(() async => getIt.reset());

  Future<void> pumpText(WidgetTester tester, Map<String, dynamic> data) async {
    getIt.registerSingleton<HomeUseCases>(
      HomeUseCases(homeRepo: _Repo(data)),
    );
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: SiteText('hero_headline_1', 'طعم البحر')),
      ),
    );
    await tester.pump();
  }

  testWidgets('shows the value saved from the dashboard', (tester) async {
    await pumpText(tester, {'hero_headline_1': 'عنوان من الداشبورد'});
    expect(find.text('عنوان من الداشبورد'), findsOneWidget);
  });

  testWidgets('falls back when the dashboard has not saved a value', (
    tester,
  ) async {
    await pumpText(tester, const {});
    expect(find.text('طعم البحر'), findsOneWidget);
  });
}
