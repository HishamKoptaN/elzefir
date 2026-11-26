import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../../../core/data/entities/formatted_date_time_entity.dart';
import '../../../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../domain/entities/orders_res_entity.dart';
import '../components/index.dart';

class OrderWidget extends StatefulWidget {
  final OrderEntity order;

  const OrderWidget({super.key, required this.order});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: context.colorScheme.primary.withValues(alpha: 0.3),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF5E3B2E).withValues(alpha: 0.08),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        spacing: 8.h,
        children: [
          Gap(4.h),
          Row(
            children: [
              if (context.isDesk) Spacer(flex: 3),
              Expanded(flex: 6, child: OrderIdWidget(order: widget.order)),
              if (context.isDesk)
                Expanded(
                  flex: 6,
                  child: Text(
                    widget.order.customer?.fullName ?? '',
                    textAlign: .center,
                    style: TextStyle(
                      fontSize: 18.sp.scaled(context),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              Expanded(
                flex: 6,
                child: Text(
                  widget.order.orderStatus?.name ?? '',
                  textAlign: .center,
                  style: TextStyle(
                    fontSize: 18.sp.scaled(context),
                    color: widget.order.orderStatus?.color ?? Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: CreatedAtWidget(
                  formattedDateTimeorder:
                      widget.order.createdAt ?? const FormattedDateTimeEntity(),
                ),
              ),
            ],
          ),
          OrderItemsWidget(
            orderId: widget.order.id ?? '',
            sallaOrderItems: widget.order.sallaOrderItems ?? [],
            clientName: widget.order.customer?.fullName ?? '',
            createdAt: widget.order.createdAt?.formattedDate ?? '',
          ),
        ],
      ),
    );
  }
}
