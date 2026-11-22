import 'package:elzefir/features/home/present/widgets/floating_nav/section_scroll_tracker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('resolves the section nearest the top line while scrolling', (
    tester,
  ) async {
    final keys = List.generate(4, (_) => GlobalKey());
    final controller = ScrollController();
    addTearDown(controller.dispose);
    await tester.pumpWidget(
      MediaQuery(
        data: const MediaQueryData(size: Size(400, 600)),
        child: Directionality(
          textDirection: .rtl,
          child: Material(
            child: SizedBox(
              width: 400,
              height: 600,
              child: SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    for (final key in keys)
                      SizedBox(height: 400, child: Container(key: key)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    controller.jumpTo(800);
    await tester.pump();

    expect(
      resolveActiveSection(keys: keys, referenceLine: 210, atBottom: false),
      2,
    );
    expect(
      resolveActiveSection(keys: keys, referenceLine: 210, atBottom: true),
      3,
    );
  });
}
