import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../notifications/present/bloc/notifications_bloc.dart';

class HomeHeaderActions extends StatelessWidget {
  const HomeHeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        BlocBuilder<NotificationsBloc, NotificationsState>(
          bloc: getIt<NotificationsBloc>(),
          builder: (context, state) {
            final unread = state.maybeMap(
              loaded: (s) {
                return s.unreadCount ?? 0;
              },
              orElse: () {
                return 0;
              },
            );
            return Badge(
              isLabelVisible: unread > 0,
              label: Text('$unread'),
              child: Container(
                height: 40.r,
                width: 40.r,
                decoration: BoxDecoration(
                  borderRadius: .circular(14.r),
                  color: context.colorScheme.brandGold.withValues(alpha: 0.14),
                  border: Border.all(
                    color: context.colorScheme.brandGold.withValues(alpha: 0.35),
                  ),
                ),
                child: IconButton(
                  padding: .zero,
                  icon: FaIcon(
                    FontAwesomeIcons.bell,
                    size: 18.r,
                    color: context.colorScheme.brandGold,
                  ),
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
