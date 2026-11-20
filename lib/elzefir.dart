import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'features/visitor_tracking/present/consent_banner.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_cubit.dart';

class Elzefir extends StatelessWidget {
  const Elzefir({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
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
              title: 'الزفر',
              debugShowCheckedModeBanner: false,
              themeMode: themeMode,
              theme: AppTheme.theme(context),
              darkTheme: AppTheme.theme(context),
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
                return Directionality(
                  textDirection: .rtl,
                  child: Stack(children: [child!, const ConsentBanner()]),
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
