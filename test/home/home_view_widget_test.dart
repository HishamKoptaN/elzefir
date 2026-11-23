import 'package:elzefir/core/di/dependency_injection.dart';
import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/domain/entities/home_res_entity.dart';
import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:elzefir/features/home/domain/entities/working_hours_entity.dart';
import 'package:elzefir/features/home/domain/repo/home_repo.dart';
import 'package:elzefir/features/home/domain/use_cases/home_use_cases.dart';
import 'package:elzefir/features/home/present/home.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/floating_section_nav.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/nav_button.dart';
import 'package:elzefir/features/notifications/domain/entities/notification_entity.dart';
import 'package:elzefir/features/products/data/model/product_model.dart';
import 'package:elzefir/features/products/domain/repo/products_repo.dart';
import 'package:elzefir/features/products/domain/use_cases/products_use_cases.dart';
import 'package:elzefir/features/products/present/blocs/bloc/products_bloc.dart';
import 'package:elzefir/features/notifications/domain/repo/notifications_repo.dart';
import 'package:elzefir/features/notifications/domain/usecases/notifications_use_cases.dart';
import 'package:elzefir/features/notifications/present/bloc/notifications_bloc.dart';
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

class _FakeNotificationsRepo implements NotificationsRepo {
  @override
  Stream<List<NotificationEntity>> watch() => Stream.value([]);

  @override
  Future<void> saveNotification({required NotificationEntity notification}) async {}

  @override
  Future<ApiResult<void>> getNotifications() async =>
      ApiResult.success(data: null);

  @override
  Future<ApiResult<void>> markAsRead({required String id}) async =>
      ApiResult.success(data: null);
}

class _FakeProductsRepo implements ProductsRepo {
  @override
  Future<ApiResult<List<ProductModel>>> get() async =>
      ApiResult.success(data: []);

  @override
  Future<ApiResult<List<ProductModel>>> getProductsMapping() async =>
      ApiResult.success(data: []);
}

void main() {
  setUp(() {
    getIt.registerSingleton<HomeUseCases>(
      HomeUseCases(homeRepo: _FakeHomeRepo()),
    );
    getIt.registerSingleton<NotificationsUseCases>(
      NotificationsUseCases(_FakeNotificationsRepo()),
    );
    getIt.registerSingleton<NotificationsBloc>(
      NotificationsBloc(getIt<NotificationsUseCases>()),
    );
    getIt.registerSingleton<ProductsBloc>(
      ProductsBloc(productsUseCases: ProductsUseCase(productsRepo: _FakeProductsRepo())),
    );
  });

  tearDown(() async {
    await getIt.reset();
  });

  testWidgets('HomeView renders the six-section shell on mobile', (tester) async {
    final originalOnError = FlutterError.onError;
    FlutterError.onError = (details) {
      final isOverflow = details.toString().contains('overflowed');
      if (isOverflow) {
        return;
      }
      originalOnError?.call(details);
    };
    addTearDown(() => FlutterError.onError = originalOnError);

    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          theme: AppTheme.theme(context),
          home: const HomeView(),
        ),
      ),
    );
    await tester.pump();

    expect(find.byType(HomeView), findsOneWidget);
    expect(find.byType(FloatingSectionNav), findsOneWidget);
    expect(find.byType(NavButton), findsNWidgets(6));
    expect(find.text('القائمة'), findsOneWidget);
  });
}
