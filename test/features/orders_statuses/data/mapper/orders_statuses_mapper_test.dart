import 'package:elzefir/core/utils/color_formatter.dart';
import 'package:elzefir/features/orders_statuses/data/mapper/orders_statuses_mapper.dart';
import 'package:elzefir/features/orders_statuses/data/model/order_status_model.dart'
    as model;
import 'package:elzefir/features/orders_statuses/domain/entities/order_status_entity.dart'
    as entity;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrdersStatusesModelMapper', () {
    test('يحوّل النموذج مع الحالة الأصلية واللون', () {
      final model.OrderStatusModel data = model.OrderStatusModel(
        id: 3,
        name: 'جديد',
        type: 'status',
        slug: 'new',
        sort: 2,
        message: 'رسالة',
        icon: 'icon',
        isActive: true,
        color: '#FF0000',
        original: const model.OriginalModel(id: 1, name: 'أصلي'),
      );

      final entity.OrderStatusEntity result = data.toEntity();

      expect(result.id, 3);
      expect(result.name, 'جديد');
      expect(result.slug, 'new');
      expect(result.isActive, isTrue);
      expect(result.color, parseHex(hexString: '#FF0000'));
      expect(result.original?.id, 1);
      expect(result.original?.name, 'أصلي');
    });

    test('يحوّل الكيان إلى نموذج مع الحفاظ على الحقول', () {
      const entity.OrderStatusEntity data = entity.OrderStatusEntity(
        id: 4,
        name: 'مكتمل',
        type: 'status',
        slug: 'done',
        sort: 5,
        isActive: false,
      );

      final model.OrderStatusModel result = data.toModel();

      expect(result.id, 4);
      expect(result.name, 'مكتمل');
      expect(result.slug, 'done');
      expect(result.sort, 5);
      expect(result.isActive, isFalse);
    });
  });
}
