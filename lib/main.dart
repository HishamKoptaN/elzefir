import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/analytics/consent_service.dart';
import 'core/services/pusher_service.dart';
import 'core/update/present/bloc/update_bloc.dart';
import 'features/auth/auth/present/blocs/auth_bloc/auth_bloc.dart';
import 'elzefir.dart';
import 'config/env_config.dart';
import 'core/debug/utils/app_observer.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl_standalone.dart';

import 'core/widgets/custom_error_widget.dart';
import 'core/di/dependency_injection.dart';

import 'package:flutter/rendering.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    if (kIsWeb) {
      SemanticsBinding.instance.ensureSemantics();
    }
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
      // await FirebaseMessagingService.initialize();
    }
    if (!kIsWeb && kReleaseMode) {
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    }
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );
    Bloc.observer = AppBlocObserver();
    configureDependencies();
    await getIt<ConsentService>().applyStoredConsent();
    getIt<PusherService>().init();
    await ScreenUtil.ensureScreenSize();
    await findSystemLocale();
    intl.Intl.defaultLocale = 'ar';
    usePathUrlStrategy();
    if (kDebugMode) {
      // await SharedPrefHelper.setSecuredString(
      //   key: SharedPrefKeys.jwtToken,
      //   value: '720|oZpdN9poVxzMRxXUdJU85YYpTYbmQSpjSBX4Vgdgb3de16c1',
      // );
      // await SharedPrefHelper.clearAllData();
      // await SharedPrefHelper.clearAllSecuredData();
    }
    runApp(const Elzefir());
    final updateCompleter = Completer();
    getIt<UpdateBloc>().add(.check(onComplete: updateCompleter));
  } catch (e, st) {
    debugPrint('🔥 Firebase init error: $e');
    debugPrint('$st');
    _handleError(error: e, stackTrace: st, context: 'app initialization');
  }
}

void _handleError({
  required Object error,
  required StackTrace stackTrace,
  required String context,
}) {
  debugPrint('🔥 Error ($context): $error');
  debugPrint('$stackTrace');
  runApp(
    CustomErrorWidget(
      errorDetails: FlutterErrorDetails(
        exception: error,
        stack: stackTrace,
        library: 'app',
        context: ErrorDescription(context),
      ),
    ),
  );
}
