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
                  shape: .circle,
                  color: context.colorScheme.brandNavyLight,
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.08),
                  ),
                ),
                child: IconButton(
                  padding: .zero,
                  icon: FaIcon(
                    FontAwesomeIcons.bell,
                    size: 18.r,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
        //Gap(8.w),
        //Container(
        //  width: 40.r,
        //  height: 40.r,
        //  decoration: BoxDecoration(
        //    shape: .circle,
        //    color: context.colorScheme.brandNavy,
        //    boxShadow: [
        //      BoxShadow(
        //        color: context.colorScheme.shadow.withValues(alpha: 0.08),
        //        blurRadius: 4.r,
        //        offset: const Offset(0, 2),
        //      ),
        //    ],
        //  ),
        //  child: IconButton(
        //    padding: .zero,
        //    icon: FaIcon(
        //      FontAwesomeIcons.bagShopping,
        //      size: 26.r,
        //      color: context.colorScheme.onPrimary,
        //    ),
        //    onPressed: () {},
        //  ),
        //),
      ],
    );
  }
}
