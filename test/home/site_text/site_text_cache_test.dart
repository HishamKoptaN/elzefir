import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/features/home/domain/entities/home_res_entity.dart';
import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:elzefir/features/home/domain/entities/working_hours_entity.dart';
import 'package:elzefir/features/home/domain/repo/home_repo.dart';
import 'package:elzefir/features/home/domain/use_cases/home_use_cases.dart';
import 'package:elzefir/features/home/present/widgets/site_text/site_text.dart';
import 'package:elzefir/features/home/present/widgets/site_text/site_text_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _Repo implements HomeRepo {
  const _Repo(this.data);
  final Map<String, dynamic> data;

  @override
  Future<ApiResult<HomeResEntity>> get() async =>
      ApiResult.success(data: HomeResEntity());

  @override
  Stream<WorkingHoursEntity?> watchWorkingHours() => const Stream.empty();

  @override
  Stream<RestaurantInfoEntity> watchRestaurantInfo() async* {
    yield RestaurantInfoEntity.fromFirestore(data);
  }
}

class _BrokenRepo implements HomeRepo {
  const _BrokenRepo();

  @override
  Future<ApiResult<HomeResEntity>> get() async =>
      ApiResult.success(data: HomeResEntity());

  @override
  Stream<WorkingHoursEntity?> watchWorkingHours() => const Stream.empty();

  @override
  Stream<RestaurantInfoEntity> watchRestaurantInfo() =>
      Stream.error(StateError('firestore offline'));
}

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await SiteTextCache.clear();
  });

  tearDown(() async {
    await SiteTextCache.clear();
    await getIt.reset();
  });

  void register(HomeRepo repo) {
    getIt.registerSingleton<HomeUseCases>(HomeUseCases(homeRepo: repo));
  }

  test('siteTextValue uses the cached value when Firestore fails', () async {
    register(const _Repo({'hero_headline_1': 'عنوان من الداشبورد'}));

    expect(
      await siteTextValue('hero_headline_1', 'افتراضي'),
      'عنوان من الداشبورد',
    );

    await getIt.reset();
    register(const _BrokenRepo());

    expect(
      await siteTextValue('hero_headline_1', 'افتراضي'),
      'عنوان من الداشبورد',
    );
    expect(await siteTextValue('missing_key', 'افتراضي'), 'افتراضي');
  });

  testWidgets('SiteText paints cached text before Firestore replies', (
    tester,
  ) async {
    await SiteTextCache.save({'about_title': 'عنوان محفوظ'});
    register(const _BrokenRepo());

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: SiteText('about_title', 'افتراضي')),
      ),
    );
    await tester.pump();

    expect(find.text('عنوان محفوظ'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
