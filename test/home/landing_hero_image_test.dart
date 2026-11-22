import 'package:elzefir/core/theme/app_theme.dart';
import 'package:elzefir/features/home/present/widgets/landing/hero/landing_hero_image.dart';
import 'package:elzefir/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('hero renders the seabass image in a circular glow frame', (
    tester,
  ) async {
    await tester.pumpWidget(const _HeroHarness());

    final image = tester.widget<Image>(find.byType(Image));
    expect(image.image, isA<AssetImage>());
    expect(
      (image.image as AssetImage).assetName,
      Assets.images.landingFoodSeabass.path,
    );
    expect(image.fit, BoxFit.cover);
    expect(find.byType(ClipOval), findsOneWidget);

    final decoration = _frameDecoration(tester);
    expect(decoration.shape, BoxShape.circle);
    expect(decoration.border, isNotNull);
    expect(decoration.boxShadow, isNotEmpty);
  });

  testWidgets('glow animation changes the frame border opacity', (
    tester,
  ) async {
    await tester.pumpWidget(const _HeroHarness());
    final state = tester.state<_HeroHarnessState>(find.byType(_HeroHarness));

    final dim = _alphaOf(_frameDecoration(tester).border!.top.color);
    state.controller.value = 1;
    await tester.pump();
    final bright = _alphaOf(_frameDecoration(tester).border!.top.color);

    expect(bright, greaterThan(dim));
  });
}

int _alphaOf(Color color) {
  return (color.a * 255.0).round().clamp(0, 255);
}

BoxDecoration _frameDecoration(WidgetTester tester) {
  final frame = tester.widget<Container>(
    find.ancestor(of: find.byType(ClipOval), matching: find.byType(Container)),
  );
  return frame.decoration! as BoxDecoration;
}

class _HeroHarness extends StatefulWidget {
  const _HeroHarness();

  @override
  State<_HeroHarness> createState() {
    return _HeroHarnessState();
  }
}

class _HeroHarnessState extends State<_HeroHarness>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return Theme(
          data: AppTheme.theme(context),
          child: Directionality(
            textDirection: .rtl,
            child: Center(child: LandingHeroImage(glow: controller)),
          ),
        );
      },
    );
  }
}
