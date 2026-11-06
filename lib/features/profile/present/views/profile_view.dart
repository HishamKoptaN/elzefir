import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/error_content_widget.dart';
import '../bloc/profile_bloc.dart';
import 'widgets/profile_widgets.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  static const String routeName = 'profile';

  @override
  State<ProfileView> createState() {
    return _ProfileViewState();
  }
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: getIt<ProfileBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.showSuccessSnackBar(title: 'تم تحديث الملف الشخصي بنجاح');
          },
          failure: (apiErrorModel) {
            context.showErrorSnackBar(title: apiErrorModel.title);
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          loaded: (state) {
            final bool isWide = MediaQuery.sizeOf(context).width > 1024;
            return SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: isWide ? 1116.w : double.infinity,
                  ),
                  child: Skeletonizer(
                    enabled: state.isLoading,
                    child: Column(
                      spacing: 25.h,
                      children: [
                        ProfileCardSection(
                          profile: state.profile,
                          updatedProfile: state.updatedProfile,
                        ),
                        ContactInfoSection(
                          profile: state.profile,
                          updatedProfile: state.updatedProfile,
                          isSubmitting:
                              state.formzSubmissionStatus.isInProgress,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          loading: (state) {
            return const Center(child: CircularProgressIndicator());
          },
          failure: (state) {
            return CustomErrorWidget(
              message: state.apiErrorModel.message,
              onRetry: () {
                getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
              },
              retryText: 'إعادة المحاولة',
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
