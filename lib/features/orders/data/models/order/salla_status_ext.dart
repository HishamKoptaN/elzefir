
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
