import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/analytics/consent_service.dart';
import '../../../core/di/dependency_injection.dart';
import '../../../core/utils/extensions/theme_ext.dart';

/// سؤال الموافقة على التحليلات يظهر مرة واحدة حتى يختار الزائر.
class ConsentBanner extends StatefulWidget {
  const ConsentBanner({super.key});

  @override
  State<ConsentBanner> createState() => _ConsentBannerState();
}

class _ConsentBannerState extends State<ConsentBanner> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final decided = await getIt<ConsentService>().isDecided();
    if (!mounted) {
      return;
    }
    setState(() {
      _visible = !decided;
    });
  }

  Future<void> _respond({required bool granted}) async {
    final service = getIt<ConsentService>();
    if (granted) {
      await service.grant();
    } else {
      await service.deny();
    }
    if (!mounted) {
      return;
    }
    setState(() {
      _visible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_visible) {
      return const SizedBox.shrink();
    }
    return Align(
      alignment: .bottomCenter,
      child: SafeArea(
        child: Container(
          margin: .all(16.r),
          padding: .all(16.r),
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainer,
            borderRadius: .circular(16.r),
          ),
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Text('تتبع الزيارات', style: context.textTheme.titleSmall),
              SizedBox(height: 6.h),
              Text(
                'نستخدم تحليلات مجهولة لتحسين الموقع. يمكنك الموافقة أو الرفض.',
                style: context.textTheme.bodySmall,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: .end,
                children: [
                  TextButton(
                    onPressed: () {
                      _respond(granted: false);
                    },
                    child: Text('رفض', style: context.textTheme.labelLarge),
                  ),
                  SizedBox(width: 8.w),
                  FilledButton(
                    onPressed: () {
                      _respond(granted: true);
                    },
                    child: Text('موافقة', style: context.textTheme.labelLarge),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
