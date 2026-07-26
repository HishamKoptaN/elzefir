import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:universal_io/io.dart';
import 'alzafr_dash.dart';
import 'config/env_config.dart';
import 'core/globals/database/shared_pref_helper.dart';
import 'core/debug/utils/app_observer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl_standalone.dart';
import 'core/globals/database/shared_pref_keys.dart';
import 'core/services/pusher_service.dart';
import 'features/auth/auth/present/blocs/auth_bloc/auth_bloc.dart';
import 'features/firebase_messaging/firebase_messaging_service.dart';
import 'core/widgets/custom_error_widget.dart';
import 'core/di/dependency_injection.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
      await FirebaseMessagingService.initialize();
      if (!Platform.isWindows) {
        await FirebaseAppCheck.instance.activate(
          providerWeb: kDebugMode
              ? WebDebugProvider()
              : ReCaptchaV3Provider('6LcQ_DotAAAAAGm3hdCoCZxm06RUxzgJFRRxdxXA'),
        );
      }
    }
  } catch (e, st) {
    debugPrint('🔥 Firebase init error: $e');
    debugPrint('$st');
  }
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  Bloc.observer = AppBlocObserver();
  configureDependencies();
  await ScreenUtil.ensureScreenSize();
  try {
    await findSystemLocale();
    intl.Intl.defaultLocale = 'ar';
    usePathUrlStrategy();
    if (kDebugMode) {
      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.jwtToken,
        value: '720|oZpdN9poVxzMRxXUdJU85YYpTYbmQSpjSBX4Vgdgb3de16c1',
      );
      // await SharedPrefHelper.clearAllData();
      // await SharedPrefHelper.clearAllSecuredData();
    }
    getIt<PusherService>().init();
    final completer = Completer();
    getIt<AuthBloc>().add(AuthEvent.check(onComplete: completer));
    await completer.future;
    runApp(const AlzafrDash());
  } catch (error, stackTrace) {
    _handleError(
      error: error,
      stackTrace: stackTrace,
      context: 'app initialization',
    );
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
