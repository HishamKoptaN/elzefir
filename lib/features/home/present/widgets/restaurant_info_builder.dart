import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../domain/entities/restaurant_info_entity.dart';
import '../../domain/use_cases/home_use_cases.dart';
import 'site_text/site_text_cache.dart';

/// يبني واجهة حسب بيانات المطعم القادمة من `settings/general` في فايرستور.
/// تبدأ بالقيم المخزّنة محلياً ثم تتحدث تلقائياً عند تعديل المستند.
class RestaurantInfoBuilder extends StatefulWidget {
  const RestaurantInfoBuilder({super.key, required this.builder});

  final Widget Function(BuildContext context, RestaurantInfoEntity info)
  builder;

  @override
  State<RestaurantInfoBuilder> createState() => _RestaurantInfoBuilderState();
}

class _RestaurantInfoBuilderState extends State<RestaurantInfoBuilder> {
  Map<String, dynamic>? _savedRaw;

  @override
  void initState() {
    super.initState();
    unawaited(
      SiteTextCache.load().then((_) {
        if (mounted) {
          setState(() {});
        }
      }),
    );
  }

  Stream<RestaurantInfoEntity> _infoStream() {
    try {
      return getIt<HomeUseCases>().watchRestaurantInfo();
    } catch (_) {
      // Widgets may be previewed in isolation before dependency injection runs.
      return Stream.value(RestaurantInfoEntity.fallback);
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<RestaurantInfoEntity>(
      stream: _infoStream(),
      initialData: RestaurantInfoEntity.fromFirestore(SiteTextCache.snapshot),
      builder: (context, snapshot) {
        if (snapshot.hasData && !identical(snapshot.data!.raw, _savedRaw)) {
          _savedRaw = snapshot.data!.raw;
          unawaited(SiteTextCache.save(_savedRaw!));
        }
        final info =
            snapshot.data ??
            RestaurantInfoEntity.fromFirestore(SiteTextCache.snapshot);
        return widget.builder(context, info);
      },
    );
  }
}
