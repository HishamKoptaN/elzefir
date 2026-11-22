import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/floating_section_nav.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/section_nav_item.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/section_scroll_tracker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const _labels = [
  'الرئيسية',
  'المعرض',
  'القائمة',
  'الأسعار',
  'من نحن',
  'تواصل',
];

void main() {
  testWidgets('each nav tap scrolls to its own section', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final controller = ScrollController();
    addTearDown(controller.dispose);
    final keys = List.generate(_labels.length, (_) => GlobalKey());
    final heights = [600.0, 400.0, 900.0, 300.0, 700.0, 600.0];

    void scrollTo(int index) {
      final target = sectionScrollTarget(
        key: keys[index],
        controller: controller,
        topKey: keys.first,
      );
      if (target != null) {
        controller.jumpTo(target);
      }
    }

    await tester.pumpWidget(ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, _) => MaterialApp(
        theme: AppTheme.theme(context),
        home: Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    for (var i = 0; i < keys.length; i++)
                      SizedBox(key: keys[i], height: heights[i]),
                    const SizedBox(height: 900),
                  ],
                ),
              ),
              FloatingSectionNav(
                items: [
                  for (var i = 0; i < keys.length; i++)
                    SectionNavItem(
                      label: _labels[i],
                      icon: FontAwesomeIcons.circle,
                      key: keys[i],
                    ),
                ],
                controller: controller,
                onSelected: scrollTo,
              ),
            ],
          ),
        ),
      ),
    ));
    await tester.pumpAndSettle();

    for (var i = 0; i < keys.length; i++) {
      scrollTo(0);
      await tester.pumpAndSettle();

      final expected = sectionScrollTarget(
        key: keys[i],
        controller: controller,
        topKey: keys.first,
      );
      await tester.tap(find.text(_labels[i]));
      await tester.pumpAndSettle();

      expect(controller.offset, expected, reason: 'section ${_labels[i]}');
      final box = keys[i].currentContext?.findRenderObject() as RenderBox;
      if (i != 0) {
        expect(
          box.localToGlobal(Offset.zero).dy,
          closeTo(16, 1),
          reason: 'section ${_labels[i]} top',
        );
      }
    }
  });
}
