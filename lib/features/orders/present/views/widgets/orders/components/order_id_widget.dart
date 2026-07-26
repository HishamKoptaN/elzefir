import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theme/app_colors.dart';
import '../../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../../../core/widgets/custom_copy_widget.dart';
import '../../../../../domain/entities/orders_res_entity.dart';
import '../../../orders_widget.dart';

class OrderIdWidget extends StatelessWidget {
  final OrderEntity order;

  const OrderIdWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 4.h.scaled(context)),
      margin: .symmetric(horizontal: 50.w.scaled(context)),
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Center(
        child: Row(
          mainAxisAlignment: .center,
          children: [
            Text(
              '${order.referenceId}#',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.sp.scaled(context),
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomCopyWidget(text: order.referenceId ?? '', title: 'رقم الطلب'),
          ],
        ),
      ),
    );
  }
}
