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
