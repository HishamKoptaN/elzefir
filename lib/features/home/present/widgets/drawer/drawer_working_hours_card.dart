import 'package:flutter/material.dart';

import '../../../../../../core/utils/extensions/theme_ext.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../store_status_builder.dart';

class DrawerWorkingHoursCard extends StatelessWidget {
  const DrawerWorkingHoursCard({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreStatusBuilder(
      builder: (context, workingHours) {
        final timeText =
            workingHours?.formattedTime ??
            'يومياً من 9:00 صباحاً حتى 11:00 مساءً';

        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: context.colorScheme.chefChoiceBg, // amber-50 / warm
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: context.colorScheme.chefChoiceBorder, // amber-200
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: context.colorScheme.chefChoiceBorder, // amber-100
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FaIcon(
                  FontAwesomeIcons.clock,
                  color: context.colorScheme.chefChoiceText, // amber-700
                  size: 16,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'مواعيد العمل واستقبال الطلبات',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      timeText,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 11,
                        color: context.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
