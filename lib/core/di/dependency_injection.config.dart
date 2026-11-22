// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:event_bus/event_bus.dart' as _i1017;
import 'package:firebase_analytics/firebase_analytics.dart' as _i398;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_core/firebase_core.dart' as _i982;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;

import '../../features/auth/auth/data/datasources/auth_api.dart' as _i976;
import '../../features/auth/auth/data/repo/auth_repo_impl.dart' as _i246;
import '../../features/auth/auth/domain/repo/auth_repo.dart' as _i610;
import '../../features/auth/auth/domain/usecases/auth_use_casees.dart' as _i151;
import '../../features/auth/auth/present/blocs/auth_bloc/auth_bloc.dart'
    as _i711;
import '../../features/auth/forgot_password/data/repo/forgot_password_repo_impl.dart'
    as _i877;
import '../../features/auth/forgot_password/domain/repo/forgot_pass_repo.dart'
    as _i614;
import '../../features/auth/forgot_password/domain/usecases/send_pass_reset_email_usecase.dart'
    as _i629;
import '../../features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart'
    as _i154;
import '../../features/auth/reset_password/data/repo/reset_pass_repo_impl.dart'
    as _i1010;
import '../../features/auth/reset_password/domain/repo/reset_pass_repo.dart'
    as _i685;
import '../../features/auth/reset_password/domain/usecases/reset_pass_usecases.dart'
    as _i992;
import '../../features/auth/reset_password/present/bloc/reset_pass_bloc.dart'
    as _i191;
import '../../features/auth/sign_in/data/datasources/sign_in_api.dart' as _i804;
import '../../features/auth/sign_in/data/repo_impl/sign_in_repo_impl.dart'
    as _i200;
import '../../features/auth/sign_in/domain/repo/sign_in_repo.dart' as _i305;
import '../../features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart'
    as _i942;
import '../../features/auth/sign_in/present/blocs/bloc/sign_in_bloc.dart'
    as _i913;
import '../../features/auth/sign_up/data/data_sources/sign_up_api.dart'
    as _i552;
import '../../features/auth/sign_up/data/repo_impl/sign_up_repo_impl.dart'
    as _i509;
import '../../features/auth/sign_up/data/services/firebase_auth_service.dart'
    as _i749;
import '../../features/auth/sign_up/domain/repo/sign_up_repo.dart' as _i871;
import '../../features/auth/sign_up/domain/use_cases/sign_up_use_cases.dart'
    as _i251;
import '../../features/auth/sign_up/present/bloc/sign_up_bloc.dart' as _i226;
import '../../features/categories/data/data_sources/categories_api.dart'
    as _i680;
import '../../features/categories/data/data_sources/categories_data_src.dart'
    as _i289;
import '../../features/categories/data/data_sources/categories_data_src_Imp.dart'
    as _i1055;
import '../../features/categories/data/data_sources/categories_mock_data_src.dart'
    as _i895;
import '../../features/categories/data/repo/categories_repo.dart' as _i298;
import '../../features/categories/domain/repo_impl/categories_repo_impl.dart'
    as _i773;
import '../../features/categories/domain/use_cases/categories_use_cases.dart'
    as _i900;
import '../../features/categories/present/blocs/bloc/categories_bloc.dart'
    as _i332;
import '../../features/home/data/data_sources/home_api.dart' as _i927;
import '../../features/home/data/data_sources/home_data_src.dart' as _i861;
import '../../features/home/data/data_sources/home_data_src_Imp.dart' as _i105;
import '../../features/home/data/repo_impl/home_repo_impl.dart' as _i886;
import '../../features/home/domain/repo/home_repo.dart' as _i280;
import '../../features/home/domain/use_cases/home_use_cases.dart' as _i357;
import '../../features/home/present/bloc/home_bloc.dart' as _i481;
import '../../features/notifications/data/datasources/notifications_api.dart'
    as _i352;
import '../../features/notifications/data/repo_impl/notifications_repo_impl.dart'
    as _i666;
import '../../features/notifications/domain/repo/notifications_repo.dart'
    as _i967;
import '../../features/notifications/domain/usecases/notifications_use_cases.dart'
    as _i139;
import '../../features/notifications/present/bloc/notifications_bloc.dart'
    as _i781;
import '../../features/order_items/data/datasources/order_items_api.dart'
    as _i993;
import '../../features/order_items/present/blocs/orders_bloc/order_items_bloc.dart'
    as _i310;
import '../../features/orders/data/datasources/orders_api.dart' as _i165;
import '../../features/orders/data/repo_impl/orders_repo_impl.dart' as _i450;
import '../../features/orders/domain/repo/orders_repo.dart' as _i808;
import '../../features/orders/domain/usecases/orders_use_cases.dart' as _i802;
import '../../features/orders/present/blocs/filters_bloc/filters_bloc.dart'
    as _i569;
import '../../features/orders/present/blocs/orders_bloc/orders_bloc.dart'
    as _i1026;
import '../../features/orders/present/views/widgets/orders/header/filters/date_bloc/date_bloc.dart'
    as _i497;
import '../../features/orders_statuses/data/data_sources/orders_statuses_api.dart'
    as _i941;
import '../../features/orders_statuses/data/repo/orders_statuses_repo.dart'
    as _i155;
import '../../features/orders_statuses/domain/repo_impl/orders_statuses_repo_impl.dart'
    as _i360;
import '../../features/orders_statuses/domain/use_cases/orders_statuses_use_cases.dart'
    as _i606;
import '../../features/orders_statuses/present/blocs/bloc/orders_statuses_bloc.dart'
    as _i205;
import '../../features/products/data/data_sources/products_api.dart' as _i832;
import '../../features/products/data/repo_impl/products_repo_impl.dart'
    as _i249;
import '../../features/products/domain/repo/products_repo.dart' as _i482;
import '../../features/products/domain/use_cases/products_use_cases.dart'
    as _i956;
import '../../features/products/present/blocs/bloc/products_bloc.dart' as _i340;
import '../../features/products/present/blocs/products_mapping_bloc/products_mapping_bloc.dart'
    as _i617;
import '../../features/profile/data/datasources/profile_api.dart' as _i192;
import '../../features/profile/data/repo/profile_repo_impl.dart' as _i256;
import '../../features/profile/domain/repo/profile_repo.dart' as _i364;
import '../../features/profile/domain/use_cases/profile_use_cases.dart'
    as _i995;
import '../../features/profile/present/bloc/profile_bloc.dart' as _i475;
import '../../features/visitor_tracking/data/visitor_data_src.dart' as _i829;
import '../../features/visitor_tracking/data/visitor_repository_impl.dart'
    as _i937;
import '../../features/visitor_tracking/domain/visitor_repository.dart' as _i10;
import '../../features/visitor_tracking/domain/visitor_tracker.dart' as _i63;
import '../../features/visitor_tracking/present/visitors_router_observer.dart'
    as _i665;
import '../analytics/analytics_service.dart' as _i726;
import '../analytics/consent_service.dart' as _i635;
import '../events/pusher_event_bus.dart' as _i235;
import '../networking/network_info.dart' as _i303;
import '../services/auth_storage_service.dart' as _i250;
import '../services/pusher_service.dart' as _i41;
import '../services/token_service.dart' as _i227;
import '../session/session_manager.dart' as _i432;
import '../session/session_manager_impl.dart' as _i241;
import '../storage/local_storage.dart' as _i329;
import '../theme/theme_cubit.dart' as _i611;
import '../update/data/data_sources/update_api.dart' as _i180;
import '../update/data/repo_impl/update_repo_impl.dart' as _i734;
import '../update/domain/repo/update_repo.dart' as _i127;
import '../update/domain/use_cases/update_use_cases.dart' as _i907;
import '../update/present/bloc/update_bloc.dart' as _i276;
import 'dio/api_module.dart' as _i158;
import 'dio/dio_module.dart' as _i374;
import 'injection_module.dart' as _i212;
import 'storage_module.dart' as _i371;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  final storageModule = _$StorageModule();
  final dioModule = _$DioModule();
  gh.singleton<_i158.LoggingInterceptor>(() => _i158.LoggingInterceptor());
  gh.singleton<_i158.LanguageInterceptor>(() => _i158.LanguageInterceptor());
  gh.singleton<_i1017.EventBus>(() => injectionModule.eventBus);
  gh.singleton<_i161.InternetConnection>(
    () => injectionModule.connectionChecker,
  );
  gh.singleton<_i982.FirebaseApp>(() => injectionModule.firebaseApp);
  gh.singleton<_i398.FirebaseAnalytics>(
    () => injectionModule.firebaseAnalytics,
  );
  gh.singleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
  gh.singleton<_i974.FirebaseFirestore>(
    () => injectionModule.firebaseFirestore,
  );
  gh.singleton<_i558.FlutterSecureStorage>(
    () => injectionModule.flutterSecureStorage(),
  );
  gh.singleton<_i329.LocalStorage>(() => storageModule.localStorage());
  gh.singleton<_i235.PusherEventBus>(() => _i235.PusherEventBus());
  gh.singleton<_i611.ThemeCubit>(() => _i611.ThemeCubit());
  gh.singleton<_i895.CategoriesMockDataSource>(
    () => _i895.CategoriesMockDataSource(),
  );
  gh.singleton<_i310.OrderItemsBloc>(() => _i310.OrderItemsBloc());
  gh.singleton<_i497.DateBloc>(() => _i497.DateBloc());
  gh.singleton<_i665.VisitorsRouterObserver>(
    () => _i665.VisitorsRouterObserver(),
  );
  gh.lazySingleton<_i749.FirebaseAuthService>(
    () => _i749.FirebaseAuthService(),
  );
  gh.lazySingleton<_i432.SessionManager>(() => _i241.SessionManagerImpl());
  gh.singleton<_i361.Dio>(
    () => dioModule.s3Dio(gh<_i158.LoggingInterceptor>()),
    instanceName: 's3Dio',
  );
  gh.singleton<_i361.Dio>(() => dioModule.webDio(), instanceName: 'webDio');
  gh.singleton<_i635.ConsentService>(
    () => _i635.ConsentService(gh<_i398.FirebaseAnalytics>()),
  );
  gh.singleton<_i303.NetworkInfoImpl>(
    () => _i303.NetworkInfoImpl(
      connectionChecker: gh<_i161.InternetConnection>(),
    ),
  );
  gh.singleton<_i726.AnalyticsService>(
    () => _i726.FirebaseAnalyticsService(gh<_i398.FirebaseAnalytics>()),
  );
  gh.factory<_i250.AuthStorageService>(
    () => _i250.AuthStorageService(gh<_i329.LocalStorage>()),
  );
  gh.lazySingleton<_i685.ResetPassRepo>(
    () => _i1010.ResetPasswordRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.singleton<_i482.ProductsRepo>(
    () => _i249.ProductsRepoImpl(gh<_i974.FirebaseFirestore>()),
  );
  gh.singleton<_i829.VisitorDataSrc>(
    () => _i829.VisitorDataSrc(gh<_i974.FirebaseFirestore>()),
  );
  gh.lazySingleton<_i227.TokenService>(
    () => _i227.TokenService(gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i614.ForgotPassRepo>(
    () => _i877.ForgotPasswordRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i992.ResetPassUseCases>(
    () => _i992.ResetPassUseCases(gh<_i685.ResetPassRepo>()),
  );
  gh.singleton<_i180.UpdateApi>(
    () => _i180.UpdateApi(gh<_i361.Dio>(instanceName: 'webDio')),
  );
  gh.singleton<_i41.PusherService>(
    () => _i41.PusherService(
      gh<_i250.AuthStorageService>(),
      gh<_i1017.EventBus>(),
    ),
  );
  gh.singleton<_i158.AuthInterceptor>(
    () => _i158.AuthInterceptor(gh<_i250.AuthStorageService>()),
  );
  gh.singleton<_i361.Dio>(
    () => dioModule.authDio(
      gh<_i158.AuthInterceptor>(),
      gh<_i158.LanguageInterceptor>(),
      gh<_i158.LoggingInterceptor>(),
    ),
    instanceName: 'authDio',
  );
  gh.singleton<_i10.VisitorRepository>(
    () => _i937.VisitorRepositoryImpl(
      gh<_i829.VisitorDataSrc>(),
      gh<_i726.AnalyticsService>(),
    ),
  );
  gh.singleton<_i976.AuthApi>(
    () => _i976.AuthApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.lazySingleton<_i804.SignInApi>(
    () => _i804.SignInApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.lazySingleton<_i552.SignUpApi>(
    () => _i552.SignUpApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.singleton<_i63.VisitorTracker>(
    () => _i63.VisitorTracker(gh<_i10.VisitorRepository>()),
  );
  gh.singleton<_i956.ProductsUseCase>(
    () => _i956.ProductsUseCase(productsRepo: gh<_i482.ProductsRepo>()),
  );
  gh.lazySingleton<_i871.SignUpRepo>(
    () => _i509.SignUpRepoImpl(
      gh<_i227.TokenService>(),
      gh<_i749.FirebaseAuthService>(),
      gh<_i552.SignUpApi>(),
    ),
  );
  gh.singleton<_i127.UpdateRepo>(
    () => _i734.UpdateRepoImpl(updateApi: gh<_i180.UpdateApi>()),
  );
  gh.lazySingleton<_i251.SignUpUseCases>(
    () => _i251.SignUpUseCases(gh<_i871.SignUpRepo>()),
  );
  gh.singleton<_i610.AuthRepo>(
    () => _i246.AuthRepoImpl(
      gh<_i59.FirebaseAuth>(),
      gh<_i976.AuthApi>(),
      gh<_i227.TokenService>(),
      gh<_i250.AuthStorageService>(),
    ),
  );
  gh.factory<_i629.SendPassResetEmailUseCase>(
    () => _i629.SendPassResetEmailUseCase(gh<_i614.ForgotPassRepo>()),
  );
  gh.lazySingleton<_i191.ResetPassBloc>(
    () => _i191.ResetPassBloc(gh<_i992.ResetPassUseCases>()),
  );
  gh.lazySingleton<_i305.SignInRepo>(
    () => _i200.SignInRepoImpl(
      gh<_i749.FirebaseAuthService>(),
      gh<_i610.AuthRepo>(),
      gh<_i804.SignInApi>(),
    ),
  );
  gh.singleton<_i361.Dio>(
    () => dioModule.dio(
      gh<_i158.AuthInterceptor>(),
      gh<_i158.LanguageInterceptor>(),
      gh<_i158.LoggingInterceptor>(),
    ),
  );
  gh.singleton<_i340.ProductsBloc>(
    () => _i340.ProductsBloc(productsUseCases: gh<_i956.ProductsUseCase>()),
  );
  gh.singleton<_i617.ProductsMappingBloc>(
    () => _i617.ProductsMappingBloc(
      productsUseCases: gh<_i956.ProductsUseCase>(),
    ),
  );
  gh.lazySingleton<_i192.ProfileApi>(() => _i192.ProfileApi(gh<_i361.Dio>()));
  gh.singleton<_i680.CategoriesApi>(() => _i680.CategoriesApi(gh<_i361.Dio>()));
  gh.singleton<_i927.HomeApi>(() => _i927.HomeApi(gh<_i361.Dio>()));
  gh.singleton<_i352.NotificationsApi>(
    () => _i352.NotificationsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i993.OrderItemsApi>(() => _i993.OrderItemsApi(gh<_i361.Dio>()));
  gh.singleton<_i165.OrdersApi>(() => _i165.OrdersApi(gh<_i361.Dio>()));
  gh.singleton<_i941.OrdersStatusesApi>(
    () => _i941.OrdersStatusesApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i832.ProductsApi>(() => _i832.ProductsApi(gh<_i361.Dio>()));
  gh.singleton<_i907.UpdateUseCases>(
    () => _i907.UpdateUseCases(updateRepo: gh<_i127.UpdateRepo>()),
  );
  gh.factory<_i154.ForgotPassBloc>(
    () => _i154.ForgotPassBloc(gh<_i629.SendPassResetEmailUseCase>()),
  );
  gh.singleton<_i861.HomeDataSrc>(
    () => _i105.HomeDataSrcImpl(api: gh<_i927.HomeApi>()),
  );
  gh.lazySingleton<_i942.SignInUseCases>(
    () => _i942.SignInUseCases(gh<_i305.SignInRepo>()),
  );
  gh.singleton<_i280.HomeRepo>(
    () => _i886.HomeRepoImpl(
      gh<_i861.HomeDataSrc>(),
      gh<_i974.FirebaseFirestore>(),
    ),
  );
  gh.singleton<_i151.AuthUseCases>(
    () => _i151.AuthUseCases(authRepo: gh<_i610.AuthRepo>()),
  );
  gh.lazySingleton<_i226.SignUpBloc>(
    () => _i226.SignUpBloc(signUpUseCases: gh<_i251.SignUpUseCases>()),
  );
  gh.singleton<_i276.UpdateBloc>(
    () => _i276.UpdateBloc(updateUseCases: gh<_i907.UpdateUseCases>()),
  );
  gh.singleton<_i155.OrdersStatusesRepo>(
    () => _i360.OrdersStatusesRepoImpl(gh<_i941.OrdersStatusesApi>()),
  );
  gh.singleton<_i808.OrdersRepo>(
    () => _i450.OrdersRepoImpl(gh<_i165.OrdersApi>()),
  );
  gh.singleton<_i711.AuthBloc>(() => _i711.AuthBloc(gh<_i151.AuthUseCases>()));
  gh.singleton<_i967.NotificationsRepo>(
    () => _i666.NotificationsRepoImpl(gh<_i352.NotificationsApi>()),
  );
  gh.singleton<_i289.CategoriesDataSrc>(
    () => _i1055.CategoriesDataSrcImpl(
      api: gh<_i680.CategoriesApi>(),
      mock: gh<_i895.CategoriesMockDataSource>(),
    ),
  );
  gh.lazySingleton<_i913.SignInBloc>(
    () => _i913.SignInBloc(signInUseCases: gh<_i942.SignInUseCases>()),
  );
  gh.lazySingleton<_i364.ProfileRepo>(
    () =>
        _i256.ProfileRepoImpl(gh<_i192.ProfileApi>(), gh<_i59.FirebaseAuth>()),
  );
  gh.singleton<_i606.OrdersStatusesUseCases>(
    () => _i606.OrdersStatusesUseCases(
      ordersStatusesRepo: gh<_i155.OrdersStatusesRepo>(),
    ),
  );
  gh.singleton<_i357.HomeUseCases>(
    () => _i357.HomeUseCases(homeRepo: gh<_i280.HomeRepo>()),
  );
  gh.singleton<_i995.ProfileUseCases>(
    () => _i995.ProfileUseCases(gh<_i364.ProfileRepo>()),
  );
  gh.singleton<_i298.CategoriesRepo>(
    () => _i773.SallaOptionCategoriesRepoImpl(gh<_i289.CategoriesDataSrc>()),
  );
  gh.singleton<_i481.HomeBloc>(
    () => _i481.HomeBloc(homeUseCases: gh<_i357.HomeUseCases>()),
  );
  gh.singleton<_i475.ProfileBloc>(
    () => _i475.ProfileBloc(gh<_i995.ProfileUseCases>()),
  );
  gh.singleton<_i802.OrdersUseCases>(
    () => _i802.OrdersUseCases(gh<_i808.OrdersRepo>()),
  );
  gh.singleton<_i139.NotificationsUseCases>(
    () => _i139.NotificationsUseCases(gh<_i967.NotificationsRepo>()),
  );
  gh.singleton<_i781.NotificationsBloc>(
    () => _i781.NotificationsBloc(gh<_i139.NotificationsUseCases>()),
  );
  gh.singleton<_i900.CategoriesUseCase>(
    () => _i900.CategoriesUseCase(categoriesRepo: gh<_i298.CategoriesRepo>()),
  );
  gh.singleton<_i569.FiltersBloc>(
    () => _i569.FiltersBloc(gh<_i802.OrdersUseCases>()),
  );
  gh.singleton<_i1026.OrdersBloc>(
    () => _i1026.OrdersBloc(gh<_i802.OrdersUseCases>()),
  );
  gh.singleton<_i205.OrdersStatusesBloc>(
    () => _i205.OrdersStatusesBloc(
      ordersStatusesUseCases: gh<_i606.OrdersStatusesUseCases>(),
      ordersBloc: gh<_i1026.OrdersBloc>(),
    ),
  );
  gh.singleton<_i332.CategoriesBloc>(
    () =>
        _i332.CategoriesBloc(categoriesUseCases: gh<_i900.CategoriesUseCase>()),
  );
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$StorageModule extends _i371.StorageModule {}

class _$DioModule extends _i374.DioModule {}
