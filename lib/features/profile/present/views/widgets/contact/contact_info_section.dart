import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routing/utils/navigation_service.dart';
import '../../../../../../core/widgets/bg_container_widget.dart';
import '../../../../../../core/widgets/contact_field_widget.dart';
import '../../../../../auth/reset_password/present/views/reset_pass_view.dart';
import '../../../../domain/entities/profile_entity.dart';
import 'profile_action_buttons.dart';
import 'profile_phone_widget.dart';

class ContactInfoSection extends StatelessWidget {
  final ProfileEntity profile;
  final ProfileEntity? updatedProfile;
  final bool isSubmitting;

  const ContactInfoSection({
    super.key,
    required this.profile,
    required this.updatedProfile,
    required this.isSubmitting,
  });

  @override
  Widget build(BuildContext context) {
    return BgContainerWidget(
      child: Column(
        crossAxisAlignment: .start,
        spacing: 20.h,
        children: [
          Text(
            'بيانات الاتصال',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          ProfilePhoneWidget(profile: profile, updatedProfile: updatedProfile),
          ContactFieldWidget(
            title: 'البريد الإلكتروني',
            value: profile.email ?? '',
          ),
          ContactFieldWidget(
            title: 'كلمة المرور',
            value: '******************',
            showButton: true,
            buttonText: 'تغير كلمة المرور',
            onButtonPressed: () {
              NavigationService.pushNamed(
                context: context,
                routeName: ResetPassView.routeName,
              );
            },
          ),
          ProfileActionButtons(
            profile: profile,
            updatedProfile: updatedProfile,
            isSubmitting: isSubmitting,
          ),
        ],
      ),
    );
  }
}
