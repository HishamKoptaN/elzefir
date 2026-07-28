import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_image.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  static const Color primary = Color(0xFF001629);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 900;

        return Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFEADE),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFC3C7CE).withOpacity(.1)),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                offset: Offset(0, 1),
                color: Color.fromRGBO(0, 0, 0, .05),
              ),
            ],
          ),
          child: isMobile
              ? Column(children: const [_ImageSection(), _ContentSection()])
              : SizedBox(
                  height: 380,
                  child: const Row(
                    children: [
                      Expanded(child: _ImageSection()),
                      Expanded(child: _ContentSection()),
                    ],
                  ),
                ),
        );
      },
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection();

  @override
  Widget build(BuildContext context) {
    return const CustomImage(
      image: 'assets/mock/about.png',
      aspectRatio: 1.45,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
    );
  }
}

class _ContentSection extends StatelessWidget {
  const _ContentSection();

  static const Color primary = Color(0xFF001629);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'من نحن',
            textAlign: .start,
            style: TextStyle(color: const Color(0xFF406182), fontSize: 24.sp),
          ),
          Text(
            'مطعم الزفر للمأكولات البحرية',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xFF28180D),
            ),
          ),
          SizedBox(height: 24.h),
          Text(
            'في مطعم الزفر نقدم أفضل أنواع الأسماك والمأكولات البحرية الطازجة، '
            'المحضرة يوميًا بأجود المكونات وعلى أيدي أمهر الطهاة. هدفنا أن نقدم '
            'تجربة مميزة تجمع بين الطعم الأصيل والجودة العالية والخدمة الممتازة.',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 20.sp,
              height: 2.6.h,
              color: Color(0xFF42474D),
            ),
          ),
          SizedBox(height: 90.h),
          // Align(
          //   alignment: AlignmentDirectional.centerEnd,
          //   child: FilledButton(
          //     onPressed: () {},
          //     style: FilledButton.styleFrom(
          //       backgroundColor: primary,
          //       foregroundColor: Colors.white,
          //       minimumSize: Size(150.w, 70.h),
          //       elevation: 0,
          //       shape: const StadiumBorder(),
          //     ),
          //     child: Text('اعرف المزيد', style: TextStyle(fontSize: 16.sp)),
          //   ),
          // ),
        ],
      ),
    );
  }
}
