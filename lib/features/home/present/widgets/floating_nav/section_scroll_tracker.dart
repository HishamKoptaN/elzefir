import 'package:flutter/material.dart';

/// يُرجع فهرس القسم الأقرب للجزء العلوي من منطقة العرض أثناء التمرير.
int resolveActiveSection({
  required List<GlobalKey> keys,
  required double referenceLine,
  required bool atBottom,
}) {
  var active = 0;
  for (var i = 0; i < keys.length; i++) {
    final box = keys[i].currentContext?.findRenderObject() as RenderBox?;
    if (box == null || !box.hasSize) {
      continue;
    }
    if (box.localToGlobal(Offset.zero).dy <= referenceLine) {
      active = i;
    }
  }
  if (atBottom) {
    active = keys.length - 1;
  }
  return active;
}

/// تغليف يقرأ حالة وحدة التحكم ثم يفوّض الحساب إلى [resolveActiveSection].
int activeSectionFor({
  required ScrollController controller,
  required List<GlobalKey> keys,
  required double referenceLine,
}) {
  if (!controller.hasClients || keys.isEmpty) {
    return 0;
  }
  return resolveActiveSection(
    keys: keys,
    referenceLine: referenceLine,
    atBottom: controller.position.extentAfter < 48,
  );
}

/// إزاحة التمرير التي تُظهر بداية [key] قرب أعلى المنظور.
///
/// يُستخدم بدلاً من `Scrollable.ensureVisible` لأن الأخير لا يحرّك الصفحة
/// إذا كان القسم ظاهراً جزئياً، مما يجعل الضغط عليه يبدو وكأنه لم ينفَّذ.
double? sectionScrollTarget({
  required GlobalKey key,
  required ScrollController controller,
  GlobalKey? topKey,
  double topPadding = 16,
}) {
  if (!controller.hasClients) {
    return null;
  }
  if (key == topKey) {
    return controller.position.minScrollExtent;
  }
  final context = key.currentContext;
  if (context == null) {
    return null;
  }
  final box = context.findRenderObject() as RenderBox?;
  final viewport = Scrollable.maybeOf(context)?.context.findRenderObject()
      as RenderBox?;
  if (box == null || viewport == null || !box.hasSize) {
    return null;
  }
  final dy = box.localToGlobal(Offset.zero, ancestor: viewport).dy;
  final target = controller.offset + dy - topPadding;
  final position = controller.position;
  return target.clamp(position.minScrollExtent, position.maxScrollExtent);
}
