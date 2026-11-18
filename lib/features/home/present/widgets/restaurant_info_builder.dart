import 'package:flutter/material.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../domain/entities/restaurant_info_entity.dart';
import '../../domain/use_cases/home_use_cases.dart';

/// يبني واجهة حسب بيانات المطعم القادمة من `settings/general` في فايرستور.
/// تبدأ بالقيم الافتراضية وتتحدث تلقائياً عند تعديل المستند.
class RestaurantInfoBuilder extends StatelessWidget {
  const RestaurantInfoBuilder({super.key, required this.builder});

  final Widget Function(BuildContext context, RestaurantInfoEntity info) builder;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<RestaurantInfoEntity>(
      stream: getIt<HomeUseCases>().watchRestaurantInfo(),
      initialData: RestaurantInfoEntity.fallback,
      builder: (context, snapshot) {
        return builder(context, snapshot.data ?? RestaurantInfoEntity.fallback);
      },
    );
  }
}
