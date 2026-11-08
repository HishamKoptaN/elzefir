import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:image_picker/image_picker.dart';
import 'package:universal_io/io.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../domain/entities/profile_entity.dart';
import '../../../bloc/profile_bloc.dart';
import 'profile_card_widget.dart';

class ProfileCardSection extends StatefulWidget {
  final ProfileEntity profile;
  final ProfileEntity? updatedProfile;

  const ProfileCardSection({
    super.key,
    required this.profile,
    required this.updatedProfile,
  });

  @override
  State<ProfileCardSection> createState() {
    return _ProfileCardSectionState();
  }
}

class _ProfileCardSectionState extends State<ProfileCardSection> {
  final ImagePicker _imagePicker = ImagePicker();

  ProfileEntity get _editableProfile {
    return widget.updatedProfile ?? widget.profile;
  }

  void _onDataChanged(ProfileEntity updatedProfile) {
    getIt<ProfileBloc>().add(
      ProfileEvent.dataChanged(updatedProfile: updatedProfile),
    );
  }

  Future<void> _pickImage() async {
    final XFile? image = await _imagePicker.pickImage(source: .gallery);
    if (image == null || !mounted) {
      return;
    }
    _onDataChanged(_editableProfile.copyWith(selectedImage: File(image.path)));
  }

  @override
  Widget build(BuildContext context) {
    return ProfileCardWidget(
      name: _editableProfile.name?.value ?? 'غير محدد',
      username: _editableProfile.username?.value ?? 'غير محدد',
      imageUrl: widget.profile.avatar,
      selectedImage: widget.updatedProfile?.selectedImage,
      isEditing: widget.updatedProfile != null,
      onNameChanged: (value) {
        _onDataChanged(
          _editableProfile.copyWith(name: GenericFormInput.dirty(value: value)),
        );
      },
      onUserNameChanged: (value) {
        _onDataChanged(
          _editableProfile.copyWith(username: UsernameFormInput.dirty(value)),
        );
      },
      onImageSelected: _pickImage,
    );
  }
}
