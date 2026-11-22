import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/floating_section_nav.dart';
import 'package:elzefir/features/home/present/widgets/floating_nav/section_nav_item.dart';
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
  testWidgets('renders all six section labels', (tester) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    await tester.pumpWidget(_NavHarness(controller: controller));

    for (final label in _labels) {
      expect(find.text(label), findsOneWidget);
    }
  });

  testWidgets('reports the tapped section index', (tester) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    int? selected;
    await tester.pumpWidget(
      _NavHarness(
        controller: controller,
        onSelected: (index) {
          selected = index;
        },
      ),
    );

    await tester.tap(find.text('القائمة'));
    await tester.pump();

    expect(selected, 2);
  });

  testWidgets('moves the active highlight to the tapped section', (tester) async {
    final controller = ScrollController();
    addTearDown(controller.dispose);
    await tester.pumpWidget(_NavHarness(controller: controller));

    final firstBefore = tester.widget<FaIcon>(find.byType(FaIcon).at(0)).color;
    await tester.tap(find.text('الأسعار'));
    await tester.pump();
    final firstAfter = tester.widget<FaIcon>(find.byType(FaIcon).at(0)).color;
    final fourthAfter = tester.widget<FaIcon>(find.byType(FaIcon).at(3)).color;

    expect(firstBefore, isNot(firstAfter));
    expect(fourthAfter, firstBefore);
  });
}

class _NavHarness extends StatelessWidget {
  const _NavHarness({required this.controller, this.onSelected});

  final ScrollController controller;
  final ValueChanged<int>? onSelected;

  @override
  Widget build(BuildContext context) {
    final keys = List.generate(6, (_) => GlobalKey());
    final items = [
      SectionNavItem(label: 'الرئيسية', icon: FontAwesomeIcons.house, key: keys[0]),
      SectionNavItem(label: 'المعرض', icon: FontAwesomeIcons.images, key: keys[1]),
      SectionNavItem(label: 'القائمة', icon: FontAwesomeIcons.utensils, key: keys[2]),
      SectionNavItem(label: 'الأسعار', icon: FontAwesomeIcons.tag, key: keys[3]),
      SectionNavItem(label: 'من نحن', icon: FontAwesomeIcons.bookOpen, key: keys[4]),
      SectionNavItem(label: 'تواصل', icon: FontAwesomeIcons.phone, key: keys[5]),
    ];
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return Theme(
          data: AppTheme.theme(context),
          child: Directionality(
            textDirection: .rtl,
            child: Material(
              child: SizedBox(
                width: 390,
                height: 844,
                child: FloatingSectionNav(
                  items: items,
                  controller: controller,
                  onSelected: onSelected ?? (_) {},
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
