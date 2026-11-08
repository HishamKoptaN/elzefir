import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../domain/entities/profile_entity.dart';
import '../../../bloc/profile_bloc.dart';

class ProfileActionButtons extends StatelessWidget {
  final ProfileEntity profile;
  final ProfileEntity? updatedProfile;
  final bool isSubmitting;

  const ProfileActionButtons({
    super.key,
    required this.profile,
    required this.updatedProfile,
    required this.isSubmitting,
  });

  bool get _isEditing {
    return updatedProfile != null;
  }

  bool get _hasChanges {
    return updatedProfile?.isEdited(original: profile) ?? false;
  }

  bool get _isSaveDisabled {
    return isSubmitting || (_isEditing && !_hasChanges);
  }

  void _onSubmit() {
    if (_hasChanges) {
      getIt<ProfileBloc>().add(const ProfileEvent.updateProfile());
      return;
    }
    getIt<ProfileBloc>().add(ProfileEvent.dataChanged(updatedProfile: profile));
  }

  void _onCancel() {
    getIt<ProfileBloc>().add(
      const ProfileEvent.dataChanged(updatedProfile: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: .center,
      spacing: 25.w,
      children: [
        Directionality(
          textDirection: .ltr,
          child: FilledButton.icon(
            onPressed: _isSaveDisabled ? null : _onSubmit,
            icon: Icon(
              _isEditing ? Icons.check_rounded : Icons.edit_rounded,
              size: 18.r,
            ),
            label: isSubmitting
                ? SizedBox(
                    width: 18.r,
                    height: 18.r,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.r,
                      color: colorScheme.onPrimary,
                    ),
                  )
                : Text(
                    _isEditing ? 'حفظ التغييرات' : 'تعديل',
                    style: textTheme.labelLarge,
                  ),
          ),
        ),
        if (_isEditing)
          OutlinedButton(
            onPressed: _onCancel,
            child: Text('إلغاء', style: textTheme.labelLarge),
          ),
      ],
    );
  }
}
