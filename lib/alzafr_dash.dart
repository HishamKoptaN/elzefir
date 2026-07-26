import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_cubit.dart';
import 'core/utils/device_helper.dart';

class AlzafrDash extends StatelessWidget {
  const AlzafrDash({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 1080),
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      rebuildFactor: RebuildFactors.size,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return BlocBuilder<ThemeCubit, ThemeMode>(
          bloc: getIt<ThemeCubit>(),
          builder: (context, themeMode) {
            return MaterialApp.router(
              title: 'Odhia',
              debugShowCheckedModeBanner: false,
              themeMode: themeMode,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              locale: const Locale('ar'),
              supportedLocales: [Locale('ar', 'EG')],
              localizationsDelegates: const [
                CountryLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              localeResolutionCallback: (locale, supportedLocales) {
                if (locale != null) {
                  for (final supportedLocale in supportedLocales) {
                    if (supportedLocale.languageCode == locale.languageCode) {
                      return supportedLocale;
                    }
                  }
                }
                return const Locale('ar', 'EG');
              },
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaler: TextScaler.linear(
                      AppResponsive.responsive(
                        context,
                        mobile: 2.7,
                        tablet: 1,
                        desktop: 1,
                      ),
                    ),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: child!,
                  ),
                );
              },
              routerConfig: AppRouter.router,
            );
          },
        );
      },
    );
  }
}

enum DeviceType { mobile, tablet, desktop }

DeviceType getDeviceType(BoxConstraints constraints) {
  double width = constraints.maxWidth;
  if (width >= 1024) {
    return DeviceType.desktop;
  } else if (width >= 600) {
    return DeviceType.tablet;
  } else {
    return DeviceType.mobile;
  }
}
