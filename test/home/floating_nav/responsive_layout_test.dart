import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/floating_section_nav.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/nav_button.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/section_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  testWidgets('small phones show icons only with accessible labels', (
    tester,
  ) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    await _pumpNav(tester, controller, const Size(320, 568));

    expect(find.byType(FaIcon), findsNWidgets(6));
    expect(find.text('الرئيسية'), findsNothing);
    expect(find.bySemanticsLabel('الرئيسية'), findsOneWidget);
  });

  testWidgets('regular phones show icon and label for each section', (
    tester,
  ) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    await _pumpNav(tester, controller, const Size(390, 844));

    expect(find.byType(FaIcon), findsNWidgets(6));
    expect(find.text('الرئيسية'), findsOneWidget);
    final align = tester.widget<Align>(
      find.descendant(
        of: find.byType(FloatingSectionNav),
        matching: find.byType(Align),
      ),
    );
    expect(align.alignment, Alignment.bottomCenter);
  });

  testWidgets('mobile rail fits and every section button is tappable', (
    tester,
  ) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    final selected = <int>[];
    const size = Size(390, 844);
    await _pumpNav(tester, controller, size, onSelected: selected.add);

    final buttons = find.byType(NavButton);
    expect(buttons, findsNWidgets(6));
    for (final element in buttons.evaluate()) {
      final box = element.renderObject as RenderBox;
      final rect = box.localToGlobal(Offset.zero) & box.size;
      expect(rect.left, greaterThanOrEqualTo(0));
      expect(rect.right, lessThanOrEqualTo(size.width));
    }

    for (var i = 0; i < 6; i++) {
      await tester.tap(find.byType(NavButton).at(i));
      await tester.pump();
    }
    expect(selected, [0, 1, 2, 3, 4, 5]);
  });

  testWidgets('desktop uses a vertical rail aligned to the left', (
    tester,
  ) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    await _pumpNav(tester, controller, const Size(1440, 900));

    final align = tester.widget<Align>(
      find.descendant(
        of: find.byType(FloatingSectionNav),
        matching: find.byType(Align),
      ),
    );
    expect(align.alignment, Alignment.centerLeft);
    final rail = tester.widget<Container>(
      find.descendant(
        of: find.byType(FloatingSectionNav),
        matching: find.byType(Container),
      ),
    );
    expect(rail.child, isA<Column>());
  });
}

Future<void> _pumpNav(
  WidgetTester tester,
  ScrollController controller,
  Size size, {
  ValueChanged<int>? onSelected,
}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);

  final keys = List.generate(6, (_) => GlobalKey());
  final items = [
    SectionNavItem(label: 'الرئيسية', icon: FontAwesomeIcons.house, key: keys[0]),
    SectionNavItem(label: 'المعرض', icon: FontAwesomeIcons.images, key: keys[1]),
    SectionNavItem(label: 'القائمة', icon: FontAwesomeIcons.utensils, key: keys[2]),
    SectionNavItem(label: 'الأسعار', icon: FontAwesomeIcons.tag, key: keys[3]),
    SectionNavItem(label: 'من نحن', icon: FontAwesomeIcons.bookOpen, key: keys[4]),
    SectionNavItem(label: 'تواصل', icon: FontAwesomeIcons.phone, key: keys[5]),
  ];
  await tester.pumpWidget(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQueryData(size: size),
          child: Theme(
            data: AppTheme.theme(context),
            child: Directionality(
              textDirection: .rtl,
              child: Material(
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: FloatingSectionNav(
                    items: items,
                    controller: controller,
                    onSelected: onSelected ?? (_) {},
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
