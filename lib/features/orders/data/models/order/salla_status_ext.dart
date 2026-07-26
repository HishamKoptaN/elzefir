import 'package:flutter/material.dart';
import '../../../../orders_statuses/data/model/order_status_model.dart';
import '../../../../orders_statuses/domain/entities/order_status_entity.dart';
import '../../../domain/entities/orders_res_entity.dart';

// extension SallaStatusColorHelper on OrderStatusModel {
//   Color get brandColor {
//     if (color == null || color!.isEmpty) return Colors.grey;
//     final hexCode = color!.replaceAll('#', '');
//     try {
//       return Color(int.parse('FF$hexCode', radix: 16));
//     } catch (e) {
//       return Colors.grey;
//     }
//   }

//   Color get backgroundColor => brandColor.withValues(alpha: 0.15);
//   Color get textColor => brandColor;
// }

// extension SallaStatusEntityColorHelper on OrderStatusEntity {
//   Color get brandColor {
//     if (color == null || color!.isEmpty) return Colors.grey;
//     final hexCode = color!.replaceAll('#', '');
//     try {
//       return Color(int.parse('FF$hexCode', radix: 16));
//     } catch (e) {
//       return Colors.grey;
//     }
//   }

//   Color get backgroundColor => brandColor.withValues(alpha: 0.15);
//   Color get textColor => brandColor;
// }
