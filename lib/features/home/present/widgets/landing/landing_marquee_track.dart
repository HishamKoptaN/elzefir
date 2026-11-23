import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import 'landing_marquee_item.dart';

class LandingMarqueeTrack extends StatefulWidget {
  const LandingMarqueeTrack({super.key, required this.names});

  final List<String> names;

  @override
  State<LandingMarqueeTrack> createState() => _LandingMarqueeTrackState();
}

class _LandingMarqueeTrackState extends State<LandingMarqueeTrack>
    with SingleTickerProviderStateMixin {
  static const _itemWidth = 170.0;
  static const _gap = 24.0;
  static const _secondsPerItem = 2;

  late final AnimationController _scroll;

  double get _segmentWidth => widget.names.length * (_itemWidth + _gap).w;

  @override
  void initState() {
    super.initState();
    _scroll = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.names.length * _secondsPerItem),
    )..repeat();
  }

  @override
  void didUpdateWidget(LandingMarqueeTrack old) {
    super.didUpdateWidget(old);
    if (old.names.length != widget.names.length) {
      _scroll.duration = Duration(
        seconds: widget.names.length * _secondsPerItem,
      );
    }
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final items = [...widget.names, ...widget.names];
    return Container(
      width: .infinity,
      padding: .symmetric(vertical: 10.h),
      clipBehavior: .hardEdge,
      decoration: BoxDecoration(
        color: colors.slateCardBg,
        borderRadius: .circular(999),
      ),
      child: AnimatedBuilder(
        animation: _scroll,
        builder: (context, _) {
          return SizedBox(
            height: 34.h,
            child: Directionality(
              textDirection: .ltr,
              child: Transform.translate(
                offset: Offset(-_scroll.value * _segmentWidth, 0),
                child: Row(
                  children: [
                    for (final name in items)
                      LandingMarqueeItem(
                        name: name,
                        width: _itemWidth.w,
                        gap: _gap.w,
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
