import 'package:elzefir/features/profile/data/mappers/profile_model_mapper.dart';
import 'package:elzefir/features/profile/data/models/presigned_url_model.dart';
import 'package:elzefir/features/profile/data/models/profile_res_model.dart';
import 'package:elzefir/features/profile/data/models/update_profile_req_model.dart';
import 'package:elzefir/features/profile/domain/entities/update_profile_req_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProfileModelX', () {
    test('يملأ القيم الناقصة بقيم افتراضية آمنة', () {
      const ProfileResModel data = ProfileResModel();

      final result = data.toEntity();

      expect(result.id, 0);
      expect(result.avatar, '');
      expect(result.name?.value, '');
      expect(result.username?.value, '');
      expect(result.phoneNumber?.value, '');
      expect(result.createdAt, '');
      expect(result.email, '');
    });

    test('يحتفظ بالقيم الموجودة عند التحويل', () {
      const ProfileResModel data = ProfileResModel(
        id: 7,
        name: 'هشام',
        username: 'hisham',
        email: 'a@b.com',
      );

      final result = data.toEntity();

      expect(result.id, 7);
      expect(result.name?.value, 'هشام');
      expect(result.username?.value, 'hisham');
      expect(result.email, 'a@b.com');
    });
  });

  group('UpdateProfileReqX', () {
    test('يأخذ مسار الصورة لا كائن الملف', () {
      final UpdateProfileReqEntity data = UpdateProfileReqEntity(
        avatarPath: '/tmp/a.png',
        name: 'هشام',
        dialCode: '+20',
      );

      final UpdateProfileReqModel result = data.toModel();

      expect(result.avatar, '/tmp/a.png');
      expect(result.name, 'هشام');
      expect(result.dialCode, '+20');
    });
  });

  group('PresignedUrlX', () {
    test('يحوّل رابط الرفع إلى كيان', () {
      const PresignedUrlModel data = PresignedUrlModel(
        uploadUrl: 'https://example.test/upload',
        filePath: 'products/a.png',
        contentType: 'image/png',
      );

      final result = data.toEntity();

      expect(result.uploadUrl, 'https://example.test/upload');
      expect(result.filePath, 'products/a.png');
      expect(result.contentType, 'image/png');
    });
  });
}
