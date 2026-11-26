import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/utils/extensions/device_type_extension.dart';
import '../../../../../../../core/utils/extensions/scaled.dart';
import '../../../../../domain/entities/orders_res_entity.dart';
import '../../../../blocs/orders_bloc/orders_bloc.dart';
import 'units/units_widget.dart';

class OrderItemsWidget extends StatelessWidget {
  final String orderId;
  final List<SallaOrderItemEntity> sallaOrderItems;
  final String clientName;
  final String createdAt;
  const OrderItemsWidget({
    super.key,
    required this.sallaOrderItems,
    required this.clientName,
    required this.createdAt,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 5.h.scaled(context),
      children: sallaOrderItems.map((sallaOrderItem) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 4.h.scaled(context)),
          decoration: BoxDecoration(
            color: const Color(0xFFFBF9F6),
            border: Border.all(
              color: const Color(0xFF5E3B2E).withValues(alpha: 0.08),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: .center,
            spacing: 6.h.scaled(context),
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.h.scaled(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (context.isDesk) Spacer(flex: 3),
                    Expanded(
                      flex: 6,
                      child: Center(
                        child: Tooltip(
                          message: 'اسم المنتج',
                          child: Text(
                            sallaOrderItem.productName ?? '',
                            textAlign: .center,
                            style: TextStyle(
                              fontSize: 16.sp.scaled(context),
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Center(
                        child: Tooltip(
                          message: 'دولة التوزيع',
                          child: Text(
                            sallaOrderItem.distributionCountry ?? '',
                            textAlign: .center,
                            style: TextStyle(
                              fontSize: 18.sp.scaled(context),
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Center(
                        child: Tooltip(
                          message: 'الاضافات',
                          child: Text(
                            sallaOrderItem.additions ?? '',
                            textAlign: .center,
                            style: TextStyle(
                              fontSize: 18.sp.scaled(context),
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    if (context.isDesk) const Spacer(flex: 6),
                  ],
                ),
              ),
              UnitsWidget(
                units: sallaOrderItem.units ?? [],
                sallaOrderItem: sallaOrderItem,
                clientName: clientName,
                orderId: orderId,
                createdAt: createdAt,
                toggleUnit: (unitId, isSelected) {
                  getIt<OrdersBloc>().add(
                    OrdersEvent.toggleUnit(
                      orderId: orderId,
                      orderItemId: sallaOrderItem.id ?? '',
                      unitId: unitId,
                      isSelected: isSelected,
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
