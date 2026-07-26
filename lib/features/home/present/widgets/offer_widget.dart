import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/extensions/responsive_icon_extension .dart';
import '../../../../core/widgets/custom_image.dart';
import 'body_widget.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});
  static const Color primary = Color(0xFF001629);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 450.h,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          textDirection: .rtl,
          children: [
            CustomImage(image: 'assets/mock/offer.png', fit: BoxFit.cover),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [primary.withOpacity(.9), primary.withOpacity(.0)],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.all(30.h),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFFBDDCA)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'عرض خاص',
                          style: TextStyle(
                            color: Color(0xFFFBDDCA),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'سمك طازج',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          height: 1.15,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'استمتع بأشهى المأكولات البحرية الطازجة بأفضل المكونات وأعلى معايير الجودة.',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 28),
                      FilledButton.icon(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: primary,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 24,
                          ),
                          shape: const StadiumBorder(),
                          elevation: 0,
                        ),
                        iconAlignment: .end,
                        label: Text(
                          'اطلب الآن',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        icon: Icon(Icons.arrow_forward_ios, size: 12.iconRes),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
